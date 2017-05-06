#include <Keyboard.h>

#define CMD_LAYER 0
#define ALPHA_LAYER 1
#define NUMERIC_LAYER 2

char layers[][4] = {
    {0 /* shift */,    0,    0}, //B00000
    {0,  'u',  '6'}, //B00001
    {KEY_BACKSPACE,  's',  '$'}, //B00010
    {0,  'g',  '7'}, //B00011
    {0,  'o',  '0'}, //B00100
    {0,  'q',  ')'}, //B00101
    {0,  'n',  '"'}, //B00110
    {0,  'b',  '8'}, //B00111
    {KEY_RETURN,  'e',  '1'}, //B01000
    {0,  'v',  '%'}, //B01001
    {KEY_TAB,  't',  '+'}, //B01010
    {0,  ',',  ','}, //B01011
    {KEY_ESC,  'a',  '*'}, //B01100
    {0,  '-',  '!'}, //B01101
    {0,  '.',  '.'}, //B01110
    {0,  'm',  '9'}, //B01111

    {0 /* ctrl */,  ' ',  ' '}, //B10000
    {0,  'h',  '-'}, //B10001
    {0,  'k',  '/'}, //B10010
    {0,  'j',  '='}, //B10011
    {0,  'c',  '('}, //B10100
    {0,  'z',  '%'}, //B10101
    {0,  'y',  '?'}, //B10110
    {0,  'x',  'x'}, //B10111
    {KEY_LEFT_CTRL ,  'i',  '2'}, //B11000
    {0,  'l',  '£'}, //B11001
    {0 /* win */,  'r',  ';'}, //B11010
    {0,  'w',  ':'}, //B11011
    {0 /* alt */,  'd',  '3'}, //B11100
    {0, '\'',  '&'}, //B11101
    {0 /* clear state */,  'f',  '4'}, //B11110
    {0,  'p',  '5'}  //B11111
};

#define TOGGLE_COUNT 24
bool toggles[TOGGLE_COUNT] = {};

char prevInput = 0;
char prevCharacter = 0;

char currentLayer = ALPHA_LAYER;
bool commandClear = true;

void setup() {

  DDRB = B00000000;
  PORTB |= B11111111;

  Keyboard.begin();
}

char readButtons() {
  return (~(PINB)) & B00111111;
}

void toggleKey(char key) {
  if (!toggles[key ^ 80]) {
    toggles[key ^ 80] = true;
    Keyboard.press(key);
  } else {
    toggles[key ^ 80] = false;
    Keyboard.release(key);
  }
}

void resetState() {
  Keyboard.releaseAll();
  currentLayer = ALPHA_LAYER;
  for(char i = 0; i < TOGGLE_COUNT; ++i) {
    toggles[i] = false;
  }
}

char decodeInput(char input) {
  if (input & 1) {
    switch(input){
      case B000001:
        toggleKey(KEY_LEFT_SHIFT);
        return 0;
      case B111101:
        resetState();
        return 0;
      case B100001:
        toggleKey(KEY_LEFT_CTRL);
        return 0;
      case B110001:
        toggleKey(KEY_LEFT_GUI);
        return 0;
      case B111001:
        toggleKey(KEY_LEFT_ALT);
        return 0;
      case B001101:
        currentLayer = NUMERIC_LAYER;
        return 0;
    }
    commandClear = false;
    return layers[input >> 1][CMD_LAYER];
  } else {
    return layers[input >> 1][currentLayer];
  }
}

void loop() {
  char firstRead = readButtons();
  delay(25);
  char secondRead = readButtons();
  if (firstRead == secondRead) {
    if (firstRead != prevInput) {
      prevInput = firstRead;
      char character = decodeInput(firstRead);
      Keyboard.release(prevCharacter);
      prevCharacter = character;
      if (character != 0) {
        Serial.println(character);
        Keyboard.press(character);
      } 
    }
  }
}
