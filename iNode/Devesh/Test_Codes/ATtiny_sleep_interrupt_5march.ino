#include <avr/sleep.h>

#define PB3_INTERRUPT PORTB.INTFLAGS & PIN3_bm
#define PB3_CLEAR_INTERRUPT_FLAG PORTB.INTFLAGS &= PIN3_bm

ISR(PORTB_PORT_vect)
{
    if(PB3_INTERRUPT)                                           // PB4 changed state (pin#5 on ATtiny1616)
    {
        digitalWrite(3, CHANGE);                              // toggle the LED
        delay(1000);
        PB3_CLEAR_INTERRUPT_FLAG;
    }
}

void PORT_init(void)
{
  for (uint8_t pin = 0; pin < 8; pin++) {           // Disable the pull-up resistors to conserve energy
    (&PORTA.PIN0CTRL)[pin] = PORT_ISC_INPUT_DISABLE_gc; // Disable on PAx pin
#ifdef PORTB
    (&PORTB.PIN0CTRL)[pin] = PORT_ISC_INPUT_DISABLE_gc; // Disable on PBx pin
#endif
#ifdef PORTC
    (&PORTC.PIN0CTRL)[pin] = PORT_ISC_INPUT_DISABLE_gc; // Disable on PCx pin
#endif
  }
    
  PORTB.DIRCLR = PIN3_bm;
  PORTB.PIN3CTRL = PORT_PULLUPEN_bm;
  PORTB.PIN3CTRL |= PORT_ISC_BOTHEDGES_gc;
}

void setup()
{
  PORT_init();

  set_sleep_mode(SLEEP_MODE_PWR_DOWN);    // Set sleep mode to power down mode
  sleep_enable();                               // Enable sleep mode
  sei();                                         // Enable Interrupts

  pinMode(3, OUTPUT);                  // Set pin#2 as output
   
}
 
void loop() {
    sleep_cpu();                               // Nothing to do here
}
