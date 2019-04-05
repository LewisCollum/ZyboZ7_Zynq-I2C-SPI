#include "xparameters.h"
#include "xiicps.h"

#define i2cControllerDeviceId XPAR_XIICPS_0_DEVICE_ID
#define i2cSlaveAddress 0x48
#define i2cSlaveClockRate 100000
#define PCF8591_DAC_ENABLE 0x40
#define PCF8591_ADC_CH0 0x40
#define PCF8591_ADC_CH1 0x41
#define PCF8591_ADC_CH2 0x42
#define PCF8591_ADC_CH3 0x43

const uint8_t adcChannelPotentiometer = 0x03;

int IicPsMasterPolledExample(u16 DeviceId);

XIicPs i2cController;
uint8_t adcSample;

enum State{
	waiting, sending, fetching
} state;


void setup() {
	XIicPs_Config* Config;
	Config = XIicPs_LookupConfig(i2cControllerDeviceId);
	XIicPs_CfgInitialize(&i2cController, Config, Config->BaseAddress);
	XIicPs_SelfTest(&i2cController);
	XIicPs_SetSClk(&i2cController, i2cSlaveClockRate);

	XIicPs_MasterSendPolled(&i2cController, (uint8_t*) &adcChannelPotentiometer, 1, i2cSlaveAddress);
	while (XIicPs_BusIsBusy(&i2cController));
}

void run() {
	XIicPs_MasterRecvPolled(&i2cController, (uint8_t*)&adcSample, 1, i2cSlaveAddress);
}

int main(void)
{
  setup();
  while(1) run();
  return 0;
}