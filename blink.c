#include <teensy41.h>

int led = 13;

void SystemInit()
{}

// the loop routine runs over and over again forever:
void main () {
    pinMode(led, OUTPUT);
    while (1) {
        digitalWrite(led, HIGH);   // turn the LED on (HIGH is the voltage level)
        delay(200);               // wait for a second
        digitalWrite(led, LOW);    // turn the LED off by making the voltage LOW
        delay(200);               // wait for a second
    }
}
