/* this code gives an output of 15mA stable current*/


#include <avr/sleep.h>
#include <ELECHOUSE_CC1101_SRC_DRV.h>

extern byte SS_PIN;

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
}

void setup()
{
  PORT_init();
  
  ELECHOUSE_cc1101.SpiWriteReg(CC1101_IOCFG0,0x2F); 
  ELECHOUSE_cc1101.SpiWriteReg(CC1101_IOCFG1,0x2F); 
  ELECHOUSE_cc1101.SpiWriteReg(CC1101_IOCFG2,0x2F); 
  digitalWrite(SS_PIN, HIGH);
  
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);    // Set sleep mode to power down mode
    sleep_enable();                               // Enable sleep mode
}
 
void loop() {
  //delay(5000);
  ELECHOUSE_cc1101.goSleep();
 // delay(1000);
  sleep_cpu();                               // Nothing to do here
}
