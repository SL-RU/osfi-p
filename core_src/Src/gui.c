#include "gui.h"

MakiseGUI    *mGui;
MHost        *host;
static MakiseGUI    Gu;
static MakiseDriver Dr;
static MHost        hs;
uint32_t
//__attribute__ ((section (".ccmram")))
Makise_Buffer[38400/4] = { 0 };
uint32_t Makise_DBuffer[9600] = { 0 };

void thello();

void HAL_SPI_TxHalfCpltCallback(SPI_HandleTypeDef *hspi)
{
    //printf("txHcplt\n");
    if(hspi == &ILI9341_SPI)
        ili9341_spi_txhalfcplt(mGui->driver);
}

void HAL_SPI_TxCpltCallback(SPI_HandleTypeDef *hspi)
{
    //printf("txcplt\n");
    thello();
    if(hspi == &ILI9341_SPI)
        ili9341_spi_txcplt(mGui->driver);
}

void gui_predraw(MakiseGUI * gui)
{
   /* if(ldf) */
   /* 	window_play_update(); */
   /* ldf = !ldf; */
    makise_gui_input_perform(host);
    makise_g_host_call(host, gui, M_G_CALL_PREDRAW);
}
void gui_draw(MakiseGUI* gui)
{
    makise_g_host_call(host, gui, M_G_CALL_DRAW);
}

MInputData inp_handler(MInputData d, MInputResultEnum res)
{
    if(d.event == M_INPUT_CLICK && res == M_INPUT_NOT_HANDLED)
    {
	//when click wasn't handled in the GUI
	
	//printf("not h %d\n", d.key);
	//if(d.key == M_KEY_LEFT) //if left wasn't handled - we'll switch focus
	//    fm_switch();
	//Cmakise_g_host_focus_prev(host);
	if(d.key == M_KEY_UP) //the same
	    makise_g_host_focus_prev(host);
	if(d.key == M_KEY_DOWN)
	    makise_g_host_focus_next(host);
	if(d.key == M_KEY_TAB_NEXT)
	    makise_g_host_focus_next(host);
	if(d.key == M_KEY_TAB_BACK)
	    makise_g_host_focus_prev(host);
	if(d.key == M_KEY_USER_FOCUS_NEXT)
	    makise_g_host_focus_next(host);
	if(d.key == M_KEY_USER_FOCUS_PREV)
	    makise_g_host_focus_prev(host);



    }
    return (MInputData){0};
}

#if MAKISE_MUTEX
MAKISE_MUTEX_t m_mutex_create ()
{
    MAKISE_MUTEX_t sobj = xSemaphoreCreateMutex();
    xSemaphoreGive(sobj);
    return sobj;
}
//delete mutex
uint8_t m_mutex_delete (MAKISE_MUTEX_t sobj)
{
    if(sobj == 0) {
	printf("Mutex null\n");
	return 0;
    }
    vSemaphoreDelete(sobj);
    return 1;
}
//Request Grant to Access some object
uint8_t m_mutex_request_grant (MAKISE_MUTEX_t sobj)
{
    if(sobj == 0 || sobj == 0) {
	printf("Mutex null\n");
	return 0;
    }
    int res = (int)(xSemaphoreTake(sobj, MAKISE_MUTEX_TIMEOUT) == pdTRUE);
    if(res == 0) {
	printf("Mutex err mak\n");
//	while(1);
    }
    return res;
}
//Release Grant to Access the Volume
uint8_t m_mutex_release_grant (MAKISE_MUTEX_t sobj)
{
    if(sobj == 0) {
	printf("Mutex null\n");
	return 0;
    }
    xSemaphoreGive(sobj);
    return 1;
}
#endif

static void* _get_gui_buffer(uint32_t size)
{
    printf("ggb %d\n", size);
    return Makise_Buffer;
}

void tests_hello_init(MHost *h);

void l_write_reg(uint8_t reg, uint32_t d)
{
    HAL_GPIO_WritePin(AG_4_GPIO_Port, AG_4_Pin, GPIO_PIN_RESET);
    uint8_t data[4] = { reg, 0, 0, d & 0xFF };
    uint8_t dataRx[4] = { 0, 0, 0, 0 };
    HAL_SPI_TransmitReceive(&hspi4, data, dataRx, 4, 100);
    HAL_GPIO_WritePin(AG_4_GPIO_Port, AG_4_Pin, GPIO_PIN_SET);
}

uint32_t l_read_reg(uint8_t reg)
{
    HAL_GPIO_WritePin(AG_4_GPIO_Port, AG_4_Pin, GPIO_PIN_RESET);
    uint8_t data[4] = { reg | 0b00100000, 0, 0, 0 };
    uint8_t dataRx[4] = { 0, 0, 0, 0 };
    HAL_SPI_TransmitReceive(&hspi4, data, dataRx, 4, 100);
    HAL_GPIO_WritePin(AG_4_GPIO_Port, AG_4_Pin, GPIO_PIN_SET);
    return dataRx[0] | dataRx[0] << 8 | dataRx[0] << 16 | dataRx[3] << 24;
}

MPosition ma_g_hpo;
MakiseGUI* gui_init()
{
    //malloc structures
    MakiseGUI    * gu = &Gu;
    MakiseDriver * dr = &Dr;
    host = &hs;

    ili9341_driver(dr, Makise_DBuffer, sizeof(Makise_DBuffer));
    memset((uint8_t*)Makise_Buffer, 0, sizeof(Makise_Buffer));
    memset((uint8_t*)Makise_DBuffer, 0, sizeof(Makise_DBuffer));

    makise_gui_autoinit(host,
			gu, dr,
			&_get_gui_buffer,
			&inp_handler,
			&gui_draw, &gui_predraw, 0, 0, 0);
    ili9341_init(gu);
    
    tests_hello_init(host);

    mGui = gu;
 
    ili9341_start(gu);

    printf("L6470\n");
    HAL_GPIO_WritePin(AG_3_GPIO_Port, AG_3_Pin, GPIO_PIN_RESET);
    HAL_GPIO_WritePin(AG_4_GPIO_Port, AG_4_Pin, GPIO_PIN_SET);
    HAL_Delay(10);
    HAL_GPIO_WritePin(AG_3_GPIO_Port, AG_3_Pin, GPIO_PIN_SET);
    HAL_Delay(1);
    printf("reg %x\n", l_read_reg(0x18));
    HAL_Delay(1);
    l_write_reg(0b01000001, 100);
    
    return gu;
}
