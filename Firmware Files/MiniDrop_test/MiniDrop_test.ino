#include <ArduinoJson.h>

#define BTN_PAIR 19
#define LED_PAIR 21
#define SHUTTER_CTLO 15
#define FOCUS_CTLO 13
#define SOLENOID_CTLO 34
#include "BluetoothSerial.h"

#if !defined(CONFIG_BT_ENABLED) || !defined(CONFIG_BLUEDROID_ENABLED)
#error Bluetooth is not enabled! Please run `make menuconfig` to and enable it
#endif

BluetoothSerial SerialBT;

StaticJsonDocument<200> doc;
//char json[] = "{\"action\":\"camera\",\"delay\":2000,\"size\":2000}";
char bluetooth_buffer[1024]; // parsing buffer
unsigned bluetooth_i = 0;

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
struct action playlist[1024];
unsigned playlist_i = 0;


void add_action(action myaction){
  playlist[playlist_i]=myaction;
  playlist_i++;
  if(playlist_i >1024)
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
  digitalWrite(SHUTTER_CTLO, LOW);
}

void play(){
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

void test_solenoid(){
  // here we will build a playlist to test things out
   Serial.println("building playlist");
   action action1 = {.type = type_droplet};
   action1.droplet.size_ms = 100;
   action1.droplet.delay_ms = 200;
   add_action(action1);
   
   action action2 = {.type = type_droplet};
   action2.droplet.size_ms = 101;
   action2.droplet.delay_ms = 201;
   add_action(action2);
   
   action action3 = {.type = type_droplet};
   action3.droplet.size_ms = 102;
   action3.droplet.delay_ms = 202;
   add_action(action3);
   
   action action4 = {.type = type_camera};
   action4.camera.delay_ms = 300;
   add_action(action4);
   play();
}

void parse_bt(){
  // Here we will parse out a bluetooth message.
  // maybe json objects? Yeah json objects seems like a good choice
  Serial.print(bluetooth_buffer);
  bluetooth_i=0;
  // need to get this working
  char json[] = bluetooth_buffer
  // Deserialize the JSON document
  DeserializationError error = deserializeJson(doc, json);

  // Test if parsing succeeds.
  if (error) {
    Serial.print(F("deserializeJson() failed: "));
    Serial.println(error.c_str());
    return;
  }
  // Fetch values.
  //
  // Most of the time, you can rely on the implicit casts.
  // In other case, you can do doc["time"].as<long>();
  const char* sensor = doc["sensor"];
  long time = doc["time"];
  double latitude = doc["data"][0];
  double longitude = doc["data"][1];
}

void setup() {
  // Setup GPIO
  pinMode(BTN_PAIR, INPUT);
  pinMode(LED_PAIR, OUTPUT);
  pinMode(SHUTTER_CTLO, OUTPUT);
  pinMode(FOCUS_CTLO, OUTPUT);
  pinMode(SOLENOID_CTLO, OUTPUT);
  Serial.begin(115200);
  SerialBT.begin("MiniDrop"); //Bluetooth device name
  Serial.println("Initializing MiniDrop");
  //Serial.println("testing playlist");
  //test_solenoid();
}

void loop() {
  if (SerialBT.available()) {
    char mychar = SerialBT.read();
    bluetooth_buffer[bluetooth_i]=mychar;
    bluetooth_i++;
    Serial.print(mychar);
    if(mychar==10) // line feed
    {
      Serial.println("found message");
      parse_bt();
    }
  }
  delay(20);
}
