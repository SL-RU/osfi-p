#include "gui.h"

MakiseGUI    *mGui;
MHost        *host;
static MakiseGUI    Gu;
static MakiseBuffer Bu;
static MakiseDriver Dr;
static MHost        hs;
static MContainer   co;
static uint32_t Makise_Buffer[38400/4];
static uint32_t Makise_DBuffer[MAKISE_BUF_H * MAKISE_BUF_H + 1];

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

static uint8_t ldf;
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

MPosition ma_g_hpo;
MakiseGUI* gui_init()
{
    //malloc structures
    MakiseGUI    * gu = &Gu;
    MakiseDriver * dr = &Dr;
    host = &hs;

    ili9341_driver(dr);

    makise_gui_autoinit(host,
			gu, dr,
			&_get_gui_buffer,
			&inp_handler,
			&gui_draw, &gui_predraw, 0, 0, 0);
    ili9341_init(gu);
    
    tests_hello_init(host);
    
    gu->driver->buffer = Makise_DBuffer;
    ili9341_start(gu);
    
    
    mGui = gu;
    return gu;
}
