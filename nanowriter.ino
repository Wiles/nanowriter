#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>

#define OLED_RESET 4

Adafruit_SSD1306 display(OLED_RESET);

char layer_a[] = {
   ' ', //B00000
   'u', //B00001
   's', //B00010
   'g', //B00011
   'o', //B00100
   'q', //B00101
   'n', //B00110
   'b', //B00111
   'e', //B01000
   'v', //B01001
   't', //B01010
   ',', //B01011
   'a', //B01100
   '-', //B01101
   '.', //B01110
   'm', //B01111
   '_', //B10000
   'h', //B10001
   'k', //B10010
   'j', //B10011
   'c', //B10100
   'z', //B10101
   'y', //B10110
   'x', //B10111
   'i', //B11000
   'l', //B11001
   'r', //B11010
   'w', //B11011
   'd', //B11100
   '\'',//B11101
   'f', //B11110
   'p', //B11111
};

void setup() {

  DDRB = B00000000;
  PORTB |= B11111111;
  
  display.begin(SSD1306_SWITCHCAPVCC, 0x3C);
  display.clearDisplay();
  display.display();

}

int readButtons() {
  return (~(PINB >> 2)) & B00011111;
}

String decodeInput(int input) {
  return String(layer_a[input]);
}

void loop() {
  String character = decodeInput(readButtons());
  display.clearDisplay();
  display.setTextColor(WHITE);
  display.setCursor(0,0);
  display.setTextSize(3);
  display.print(character);
  display.display();
}


