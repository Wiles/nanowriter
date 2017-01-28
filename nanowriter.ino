#include <Keyboard.h>

#define CMD_LAYER 0
#define ALPHA_LAYER 1
#define NUMERIC_LAYER 2

char layers[][4] = {
    {0,    0,    0}, //B00000
    {0,  'u',  '6'}, //B00001
    {0xB2,  's',  '$'}, //B00010
    {0,  'g',  '7'}, //B00011
    {0,  'o',  '0'}, //B00100
    {0,  'q',  ')'}, //B00101
    {0,  'n',  '"'}, //B00110
    {0,  'b',  '8'}, //B00111
    {0,  'e',  '1'}, //B01000
    {0,  'v',  '%'}, //B01001
    {0,  't',  '+'}, //B01010
    {0,  ',',  ','}, //B01011
    {0,  'a',  '*'}, //B01100
    {0,  '-',  '!'}, //B01101
    {0,  '.',  '.'}, //B01110
    {0,  'm',  '9'}, //B01111

    {0,  ' ',  ' '}, //B10000
    {0,  'h',  '-'}, //B10001
    {0,  'k',  '/'}, //B10010
    {0,  'j',  '='}, //B10011
    {0,  'c',  '('}, //B10100
    {0,  'z',  '%'}, //B10101
    {0,  'y',  '?'}, //B10110
    {0,  'x',  'x'}, //B10111
    {0,  'i',  '2'}, //B11000
    {0,  'l',  '£'}, //B11001
    {0,  'r',  ';'}, //B11010
    {0,  'w',  ':'}, //B11011
    {0,  'd',  '3'}, //B11100
    {0, '\'',  '&'}, //B11101
    {0,  'f',  '4'}, //B11110
    {0,  'p',  '5'}  //B11111
};

char currentLayer = ALPHA_LAYER;
bool commandClear = true;

void setup() {

  DDRB = B00000000;
  PORTB |= B11111111;

  Keyboard.begin();
}

char readButtons() {
  return (~(PINB >> 1)) & B00111111;
}

char decodeInput(char input) {
  if (input & 1) {
    switch(input){
      case B000001:
        Keyboard.press(KEY_LEFT_SHIFT);
        break;
      case B000011:
        Keyboard.releaseAll();
        currentLayer = ALPHA_LAYER;
        break;
      case B001101:
        currentLayer = NUMERIC_LAYER;
        break;
    }
    commandClear = false;
    return layers[input >> 1][CMD_LAYER];
  } else {
    return layers[input >> 1][currentLayer];
  }
}

char prevCharacter = 0;

void loop() {
  char firstRead = readButtons();
  delay(25);
  char secondRead = readButtons();
  if (firstRead == secondRead) {
    char character = decodeInput(firstRead);
    if (character != prevCharacter) {
      Keyboard.release(prevCharacter);
      prevCharacter = character;
      if (character != 0) {
        Keyboard.press(character);
      }
    }
  }
}

