#include "makise_config.h"
#include "ili9341.h"
#include "stm32f4xx_hal_tim.h"
#include "dma.h"

extern inline void _ili9341_delay(uint32_t x) { HAL_Delay(x); }
extern inline void _ili9341_rst(uint8_t st){HAL_GPIO_WritePin(ILI9341_RST, st ? GPIO_PIN_SET : GPIO_PIN_RESET);}
extern inline void _ili9341_cs(uint8_t st){HAL_GPIO_WritePin(ILI9341_CS, st ? GPIO_PIN_SET : GPIO_PIN_RESET);}
extern inline void _ili9341_dc(uint8_t st){HAL_GPIO_WritePin(ILI9341_DC, st ? GPIO_PIN_SET : GPIO_PIN_RESET);}

uint8_t ili9341_backlight = 0;

void ili9341_driver(MakiseDriver * d)
{
    d->lcd_height    = 240;
    d->lcd_width     = 320;
    d->buffer_height = MAKISE_BUF_H;
    d->buffer_width  = MAKISE_BUF_W;
    d->pixeldepth    = 16;
    d->buffer        = 0;
    d->size          = MAKISE_BUF_H * MAKISE_BUF_W * 2;
    d->posx          = 0;
    d->posy          = 321;
    d->init          = &ili9341_init;
    d->start         = &ili9341_start;
    d->sleep         = &ili9341_sleep;
    d->awake         = &ili9341_awake;
    d->set_backlight = &ili9341_set_backlight;
}

void transmitCmdData(uint8_t r, uint8_t *data, int l)
{
    _ili9341_dc(0);
    HAL_SPI_Transmit(&ILI9341_SPI, &r, 1, 10);
    
    _ili9341_dc(1);
    HAL_SPI_Transmit(&ILI9341_SPI, &data, l, 10);

}

uint8_t ili9341_init(MakiseGUI* gui)
{
    _ili9341_rst(1);
    _ili9341_delay(5);
    _ili9341_rst(0);
    _ili9341_delay(20);
    _ili9341_rst(1);
    _ili9341_delay(150);

    uint8_t data[15] = {0};

    data[0] = 0x39;
    data[1] = 0x2C;
    data[2] = 0x00;
    data[3] = 0x34;
    data[4] = 0x02;
    transmitCmdData(0xCB, data, 5);
        
    data[0] = 0x00;
    data[1] = 0XC1;
    data[2] = 0X30;
    transmitCmdData(0xCF, data, 3);

    data[0] = 0x85;
    data[1] = 0x00;
    data[2] = 0x78;
    transmitCmdData(0xE8, data, 3);

    data[0] = 0x00;
    data[1] = 0x00;
    transmitCmdData(0xEA, data, 2);

    data[0] = 0x64;
    data[1] = 0x03;
    data[2] = 0X12;
    data[3] = 0X81;
    transmitCmdData(0xED, data, 4);

    data[0] = 0x20;
    transmitCmdData(0xF7, data, 1);

    data[0] = 0x23;   	//VRH[5:0]
    transmitCmdData(0xC0, data, 1);    	//Power control

    data[0] = 0x10;   	//SAP[2:0];BT[3:0]
    transmitCmdData(0xC1, data, 1);    	//Power control

    data[0] = 0x3e;   	//Contrast
    data[1] = 0x28;
    transmitCmdData(0xC5, data, 2);    	//VCM control

    data[0] = 0x86;  	 //--
    transmitCmdData(0xC7, data, 1);    	//VCM control2

    data[0] = 0x48;  	//C8
    transmitCmdData(0x36, data, 1);    	// Memory Access Control

    data[0] = 0x55;
    transmitCmdData(0x3A, data, 1);

    data[0] = 0x00;
    data[1] = 0x18;
    transmitCmdData(0xB1, data, 2);

    data[0] = 0x08;
    data[1] = 0x82;
    data[2] = 0x27;
    transmitCmdData(0xB6, data, 3);    	// Display Function Control

    data[0] = 0x00;
    transmitCmdData(0xF2, data, 1);    	// 3Gamma Function Disable

    data[0] = 0x01;
    transmitCmdData(0x26, data, 1);    	//Gamma curve selected

    data[0] = 0x0F;
    data[1] = 0x31;
    data[2] = 0x2B;
    data[3] = 0x0C;
    data[4] = 0x0E;
    data[5] = 0x08;
    data[6] = 0x4E;
    data[7] = 0xF1;
    data[8] = 0x37;
    data[9] = 0x07;
    data[10] = 0x10;
    data[11] = 0x03;
    data[12] = 0x0E;
    data[13] = 0x09;
    data[14] = 0x00;
    transmitCmdData(0xE0, data, 15);    	//Set Gamma

    data[0] = 0x00;
    data[1] = 0x0E;
    data[2] = 0x14;
    data[3] = 0x03;
    data[4] = 0x11;
    data[5] = 0x07;
    data[6] = 0x31;
    data[7] = 0xC1;
    data[8] = 0x48;
    data[9] = 0x08;
    data[10] = 0x0F;
    data[11] = 0x0C;
    data[12] = 0x31;
    data[13] = 0x36;
    data[14] = 0x0F;
    transmitCmdData(0xE1, data, 15);    	//Set Gamma

    ili9341_write_command(0x11);    	//Exit Sleep
    HAL_Delay(120);
        
    transmitCmd(0x29);    //Display on
    transmitCmd(0x2c);
    
    return HAL_OK;
}

//set window for drawing buffer
void _ili9341_setAddrWindow(uint16_t x0, uint16_t y0, uint16_t x1,
                            uint16_t y1)
{
    uint8_t _ili9341_addr[2];

    _ili9341_cs(0);
    ili9341_write_command(ILI9341_CASET); // Column addr set
    
    _ili9341_dc(1);
    _ili9341_addr[0] = x0 >> 8;
    _ili9341_addr[1] = x0;
    _ili9341_addr[2] = x1 >> 8;
    _ili9341_addr[3] = x1;
    HAL_SPI_Transmit(&ILI9341_SPI, (uint8_t*)_ili9341_addr, 4, 10);

    ili9341_write_command(ILI9341_PASET); // Row addr set

    _ili9341_dc(1);
    _ili9341_addr[0] = y0 >> 8;
    _ili9341_addr[1] = y0;
    _ili9341_addr[2] = y1 >>8;
    _ili9341_addr[3] = y1;
    HAL_SPI_Transmit(&ILI9341_SPI, (uint8_t*)_ili9341_addr, 4, 10);

    ili9341_write_command(ILI9341_RAMWR); // write to RAM
}

void ili9341_tx(MakiseDriver* d)
{    
    d->posy = 0;   
    
    if(d->gui->draw != 0)
    {
	d->gui->draw(d->gui);
    }
    
    _ili9341_setAddrWindow(0, d->posy, d->lcd_width, d->buffer_height - 1 + d->posy);
    makise_render(d->gui, 0);

    _ili9341_dc(1);
    _ili9341_cs(0);

    HAL_SPI_Transmit_DMA(&ILI9341_SPI, d->buffer, d->size);
}

uint8_t ili9341_start(MakiseGUI* gui)
{
#if ILI9341_LED_USE_PWM
    HAL_TIM_Base_Start(ILI9341_LED_PWM);
    HAL_TIM_PWM_Start(ILI9341_LED_PWM, ILI9341_LED_PWM_CHANNEL);
#endif
//    ili9341_set_backlight(1);
    ili9341_set_backlight(gui, 31);
    ili9341_tx(gui->driver);

    return M_OK;
}
uint8_t ili9341_sleep(MakiseGUI* gui)
{
    return M_OK;
}
uint8_t ili9341_awake(MakiseGUI* gui)
{
    return M_OK;
}
uint8_t ili9341_set_backlight(MakiseGUI* gui, uint8_t val)
{
#if ILI9341_LED_USE_PWM
    __HAL_TIM_SET_COMPARE(ILI9341_LED_PWM, ILI9341_LED_PWM_CHANNEL, val);
#else
    HAL_GPIO_WritePin(ILI9341_LED, val ? GPIO_PIN_SET : GPIO_PIN_RESET);
#endif
    return M_OK;
}
uint8_t ili9341_spi_txhalfcplt(MakiseDriver* d)
{
    if(d->posy < d->lcd_height)
	makise_render(d->gui, 1);
    return M_OK;
}
uint8_t ili9341_spi_txcplt(MakiseDriver* d)
{
//    _ili9341_cs(1);

    uint8_t dr = 0;
    MakiseBuffer *bu = d->gui->buffer;

    if(d->posy >= d->lcd_height)
    {
	dr = 1;
	d->posy = 0;
	
	memset(bu->buffer + 
	       d->lcd_width * (d->lcd_height - d->buffer_height) * bu->pixeldepth / 32,
	       0,
	       d->lcd_width * d->buffer_height * bu->pixeldepth / 8);

	if(d->gui->draw != 0)
	{
	    d->gui->draw(d->gui);
	}
	
    }

    _ili9341_setAddrWindow(0, d->posy, d->lcd_width, d->buffer_height - 1 + d->posy);
    makise_render(d->gui, dr ? 0 : 2);
    
    _ili9341_dc(1);
    _ili9341_cs(0);


    HAL_DMA_Start_IT(ILI9341_SPI.hdmatx, (uint32_t)d->buffer, (uint32_t)&ILI9341_SPI.Instance->DR, d->size);
    /* Enable the SPI Error Interrupt Bit */
    SET_BIT(ILI9341_SPI.Instance->CR2, SPI_CR2_ERRIE);

    /* Enable Tx DMA Request */
    SET_BIT(ILI9341_SPI.Instance->CR2, SPI_CR2_TXDMAEN);
    
    if(dr)
    {
	if(d->gui->predraw != 0)
	{
	    d->gui->predraw(d->gui);
	}
	if(d->gui->update != 0)
	{
	    d->gui->update(d->gui);
	}
    }
    else
    {
	memset(bu->buffer + (d->posy - d->buffer_height * 2) *
	       d->lcd_width * bu->pixeldepth / 32,
	       0,
	       d->lcd_width * d->buffer_height * bu->pixeldepth / 8);
    }
    
    return M_OK;
}

uint8_t ili9341_write_data(uint8_t d)
{
    _ili9341_dc(1);
    HAL_SPI_Transmit(&ILI9341_SPI, &d, 1, 10);
    return d;
}

uint8_t ili9341_write_command(uint8_t c)
{
    _ili9341_dc(0);
    HAL_SPI_Transmit(&ILI9341_SPI, &c, 1, 10);
    return c;
}
