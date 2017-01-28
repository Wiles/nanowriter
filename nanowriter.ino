#include <Keyboard.h>

#define CMD_LAYER 0
#define ALPHA_LAYER 1
#define NUMERIC_LAYER 2

char layers[][3] = {
    {0,   0,    0}, //B00000
    {0,  'u',  '6'}, //B00001
    {0,  's',    0}, //B00010
    {0,  'g',  '7'}, //B00011
    {0,  'o',  '0'}, //B00100
    {0,  'q',    0}, //B00101
    {0,  'n',    0}, //B00110
    {0,  'b',  '8'}, //B00111
    {0,  'e',  '1'}, //B01000
    {0,  'v',    0}, //B01001
    {0,  't',    0}, //B01010
    {0,  ',',    0}, //B01011
    {0,  'a',    0}, //B01100
    {0,  '-',    0}, //B01101
    {0,  '.',    0}, //B01110
    {0,  'm',  '9'}, //B01111
    {0,  ' ',    0}, //B10000
    {0,  'h',    0}, //B10001
    {0,  'k',    0}, //B10010
    {0,  'j',    0}, //B10011
    {0,  'c',    0}, //B10100
    {0,  'z',    0}, //B10101
    {0,  'y',    0}, //B10110
    {0,  'x',    0}, //B10111
    {0,  'i',  '2'}, //B11000
    {0,  'l',    0}, //B11001
    {0,  'r',    0}, //B11010
    {0,  'w',    0}, //B11011
    {0,  'd',  '3'}, //B11100
    {0, '\'',    0}, //B11101
    {0,  'f',  '4'}, //B11110
    {0,  'p',  '5'}  //B11111
};

char currentLayer = ALPHA_LAYER;

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
      case B000011:
        Keyboard.releaseAll();
        currentLayer = ALPHA_LAYER;
        break;
      case B001101:
        currentLayer = NUMERIC_LAYER;
        break;
      default:
        return layers[input >> 1][CMD_LAYER];
    }
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

