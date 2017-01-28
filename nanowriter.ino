#include <Keyboard.h>

#define CMD_LAYER 0
#define ALPHA_LAYER 1
#define CAPITAL_LAYER 2
#define NUMERIC_LAYER 3

char layers[][4] = {
    {0,    0,    0,    0}, //B00000
    {0,  'u',  'U',  '6'}, //B00001
    {0xB2,  's',  'S',  '$'}, //B00010
    {0,  'g',  'G',  '7'}, //B00011
    {0,  'o',  'O',  '0'}, //B00100
    {0,  'q',  'Q',  ')'}, //B00101
    {0,  'n',  'N',  '"'}, //B00110
    {0,  'b',  'B',  '8'}, //B00111
    {0,  'e',  'E',  '1'}, //B01000
    {0,  'v',  'V',  '%'}, //B01001
    {0,  't',  'T',  '+'}, //B01010
    {0,  ',',  ',',  ','}, //B01011
    {0,  'a',  'A',  '*'}, //B01100
    {0,  '-',  '-',  '!'}, //B01101
    {0,  '.',  '.',  '.'}, //B01110
    {0,  'm',  'M',  '9'}, //B01111

    {0,  ' ',  ' ',  ' '}, //B10000
    {0,  'h',  'H',  '-'}, //B10001
    {0,  'k',  'K',  '/'}, //B10010
    {0,  'j',  'J',  '='}, //B10011
    {0,  'c',  'C',  '('}, //B10100
    {0,  'z',  'Z',  '%'}, //B10101
    {0,  'y',  'Y',  '?'}, //B10110
    {0,  'x',  'X',  'x'}, //B10111
    {0,  'i',  'I',  '2'}, //B11000
    {0,  'l',  'L',  '£'}, //B11001
    {0,  'r',  'R',  ';'}, //B11010
    {0,  'w',  'W',  ':'}, //B11011
    {0,  'd',  'D',  '3'}, //B11100
    {0, '\'', '\'',  '&'}, //B11101
    {0,  'f',  'F',  '4'}, //B11110
    {0,  'p',  'P',  '5'}  //B11111
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
        currentLayer = CAPITAL_LAYER;
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

