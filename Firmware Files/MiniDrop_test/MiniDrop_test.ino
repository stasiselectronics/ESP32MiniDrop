  #include <ArduinoJson.h>
#include "BluetoothSerial.h"

// GPIO Definitions
#define BTN_PAIR 19
#define LED_PAIR 21
#define SHUTTER_CTLO 13
#define FOCUS_CTLO 15
#define SOLENOID_CTLO 32


#if !defined(CONFIG_BT_ENABLED) || !defined(CONFIG_BLUEDROID_ENABLED)
#error Bluetooth is not enabled! Please run `make menuconfig` to and enable it
#endif


BluetoothSerial SerialBT;
StaticJsonDocument<5096> doc;
char bluetooth_buffer[1024]; // parsing buffer
unsigned bluetooth_i = 0;
int connected_devices = 0;
// Structure to hold options for a water droplet
// Size is how long in ms the solenoid is "on"
// delay is how long it waits until activating the solenoid in ms
struct droplet_struct{
  unsigned size_ms;
  unsigned delay_ms;
};

// structure to hold options for activating the shutter
// right now it is just the delay until activation in ms
struct camera_struct{
  unsigned delay_ms;
};

// structure to hold options for actions
// Includes both droplet and camera structs, so be careful when performing actions
enum action_type{type_none,type_droplet,type_camera};
struct action{
  action_type type;
  droplet_struct droplet;
  camera_struct camera;
};

// Structure array to hold all of our actions
// chosing a very high number of elements just for fun
struct action playlist[5096];
unsigned playlist_i = 0;


void add_action(action myaction){
  playlist[playlist_i]=myaction;
  playlist_i++;
  if(playlist_i >5096)
    playlist_i = 0;
}

void drop(unsigned delay_ms, unsigned size_ms){
  Serial.print("size: ");Serial.print(size_ms);
  Serial.print(" , delay: ");Serial.println(delay_ms);
  // Here we will drop the given droplet
  delay(delay_ms);
  // turn on solenoid
  digitalWrite(SOLENOID_CTLO, HIGH);
  delay(size_ms);
  // turn off solenoid
  digitalWrite(SOLENOID_CTLO, LOW);
}

void expose(unsigned delay_ms){
  Serial.print("delay: ");Serial.println(delay_ms);
  // Here we will take a picture, or "exposure"
  delay(delay_ms);
  // turn on solenoid
  digitalWrite(SHUTTER_CTLO, HIGH);
  delay(300);
  digitalWrite(SHUTTER_CTLO, LOW);
}

void play(){
  Serial.println("---------------------------");
  Serial.println("----------Action!----------");
  Serial.println("---------------------------");
  for(int i = 0; i < playlist_i;i++){
    Serial.print("Action: ");Serial.println(i);
    Serial.print("Action Type: ");
    if(playlist[i].type == type_camera){
      Serial.println("Camera");
      expose(playlist[i].camera.delay_ms);
    }
    if(playlist[i].type == type_droplet){
      Serial.println("Drop");
      drop(playlist[i].droplet.delay_ms, playlist[i].droplet.size_ms);
    }
  }
  playlist_i = 0;
}

void parse_bt(){
  // Here we will parse out a bluetooth message.
  // Serial.print(bluetooth_buffer);
  bluetooth_i = 0; // reset bluetooth message buffer
  // Deserialize the JSON document
  DeserializationError error = deserializeJson(doc, bluetooth_buffer);
  
  // Test if parsing succeeds.
  if (error) {
    Serial.print(F("deserializeJson() failed: "));
    Serial.println(error.c_str());
    return;
  }
  
  // Fetch values
  // Get a reference to the root array
  JsonArray arr = doc.as<JsonArray>();
  for (JsonObject action : arr) {
    String type = action["type"];
    unsigned delay_ms = action["delay"];
    unsigned size_ms = action["size"];
    String hold_status = action["hold_status"];
    struct action myaction; // action structure to hold all the values
    if(type=="droplet"){
      myaction.type= type_droplet;
      myaction.droplet.size_ms = size_ms;
      myaction.droplet.delay_ms = delay_ms;
      add_action(myaction);
    }
    else if(type=="camera"){
      myaction.type= type_camera;
      myaction.camera.delay_ms = delay_ms;
      add_action(myaction);
    }
    else if(type=="hold"){
      if(hold_status=="on"){
        // turn on solenoid
        Serial.println("Keeping Solenoid On");
        digitalWrite(SOLENOID_CTLO, HIGH);
      }
      else if(hold_status=="off"){
        // turn off solenoid
        Serial.println("Turning off Solenoid");
        digitalWrite(SOLENOID_CTLO, LOW);
      }
    }
    else {
      Serial.print("can't determine type: ");Serial.println(type);
    }
  }
  if(playlist_i>0){
    // Now we have finished parsing and adding all actions
    play(); // execute all the actions that were added 
  }
  
}

void callback(esp_spp_cb_event_t event, esp_spp_cb_param_t *param){
// Callback function implementation
  if(event == ESP_SPP_SRV_OPEN_EVT){
    Serial.println("Client Connected");
    connected_devices++;
    digitalWrite(LED_PAIR,HIGH);
  }
  else if(event == ESP_SPP_CLOSE_EVT ){
    Serial.println("Client disconnected");
    connected_devices--;
    if(connected_devices<=0){
      connected_devices=0;
      digitalWrite(LED_PAIR,LOW);
    }
  }
}

void setup() {
  Serial.begin(115200);
  SerialBT.begin("MiniDrop"); //Bluetooth device name
  Serial.println("Initializing MiniDrop");
  
  // Setup GPIO
  pinMode(BTN_PAIR, INPUT);
  pinMode(LED_PAIR, OUTPUT);
  pinMode(SHUTTER_CTLO, OUTPUT);
  pinMode(FOCUS_CTLO, OUTPUT);
  pinMode(SOLENOID_CTLO, OUTPUT);
  pinMode(13,OUTPUT);
  SerialBT.register_callback(callback);
  // Go ahead and turn off the solenoid just in case
  digitalWrite(SOLENOID_CTLO, LOW);
}

void loop() {
  if (SerialBT.available()) {
    char mychar = SerialBT.read();
    bluetooth_buffer[bluetooth_i]=mychar;
    bluetooth_i++;
    //Serial.print(mychar);
    if(mychar==10) // line feed
    {
      //Serial.println("found message");
      parse_bt();
    }
  }
  int i = 1 +2; //busy work to keep alive
}
