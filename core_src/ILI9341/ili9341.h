#ifndef ILI9341_H
#define ILI9341_H
#include "spi.h"
#include "gpio.h"

#include "stm32f4xx_hal.h"
#include "ili9341_registers.h"

#include "makise.h"


#define ILI9341_SPI   hspi3
#define ILI9341_CS    L_CS_GPIO_Port, L_CS_Pin
#define ILI9341_DC    L_DC_GPIO_Port, L_DC_Pin
#define ILI9341_LED   L_LED_GPIO_Port, L_LED_Pin
#define ILI9341_RST   L_RST_GPIO_Port, L_RST_Pin
//#define ILI9341_LED_PWM 0
//#define ILI9341_LED_PWM_CHANNEL TIM_CHANNEL_4
//#define ILI9341_LED_USE_PWM 0

//#if ILI9341_LED_USE_PWM
//#include "stm32f4xx_hal_tim.h"
//#include "tim.h"
//#endif

void ili9341_driver(MakiseDriver*, uint32_t*, uint32_t);

uint8_t ili9341_init (MakiseGUI* gui);
uint8_t ili9341_start(MakiseGUI* gui);
uint8_t ili9341_sleep(MakiseGUI* gui);
uint8_t ili9341_awake(MakiseGUI* gui);
uint8_t ili9341_set_backlight(MakiseGUI* gui, uint8_t);

uint8_t ili9341_spi_txhalfcplt(MakiseDriver* driver);
uint8_t ili9341_spi_txcplt(MakiseDriver* driver);

//void    ili9341_render(MakiseGUI* gui);

uint8_t ili9341_write_data(uint8_t d);
uint8_t ili9341_write_command(uint8_t c);

#endif
