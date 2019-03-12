#include "gui.h"

MakiseStyle_Button ts_button =
{
    .font = &F_Default10x20,
    .bitmap_gap = 10,
    .active_delay = 5,
    //          bg       font     border   double_border
    .normal =  {MC_Black, MC_White, MC_White, 2}, //normal
    .focused = {MC_Black, MC_White, MC_White, 6}, //focused
    .active =  {MC_Green, MC_Gray, MC_White, 2}, //active
};
MakiseStyle_Lable ts_lable =
{
    .font = &F_Default10x20,
    //font       bg     border   double_border
    .font_col = MC_White,
    .bg_color = MC_Transparent,
    .border_c = MC_Green,
    .thickness = 3,
    .scroll_speed = 100
};

static const uint8_t B_folder_data[] = {
    0x1e, 0xc2, 0x05, 0xcc, 0x5f, 0xb0, 0x60, 0x41, 0x7f, 
    0x00,  };
const MakiseBitmap B_folder = {
    .width = 9,
    .height = 8,
    .data = B_folder_data
};
MakiseStyle_FSViewer ts_fsviewer = {
    .font               = &F_Default6x10,
    .font_line_spacing  = 0,
    .bitmap_folder      = &B_folder,
    .left_margin        = 0,
    .item_margin        = 0,
    .scroll_width       = 3,
    .scroll_bg_color    = MC_Black,
    .scroll_color       = MC_White,
    
    .normal  = {MC_Black, MC_Black,  MC_Black, 0},
    .focused = {MC_Black, MC_White, MC_Black, 0},
    .active  = {MC_Black, MC_White, MC_Black, 0},
};
MakiseStyle_FSViewer_Item ts_fsviewer_item = {
    .font               = &F_Default6x10,
    .font_line_spacing  = 0,

    .text_scroll_speed = 100,
    
    .normal  = {MC_Black, MC_White,  MC_Black,  MC_White, 0},
    .focused = {MC_White, MC_Black, MC_White, MC_Black, 0},
    .active  = {MC_Black,  MC_White, MC_White, MC_Black, 0},
};


static MButton button; //button structure
static MButton button1; //button structure
static MLable lable; //lable structure
static MFSViewer flist;

static void  click(MButton* b) //b - button wich was clicked
{
}
//event when button was clicked
static void  click1(MButton* b) //b - button wich was clicked
{
    //return;
    //create lable
    m_create_lable(&lable, b->el.parent,
		   mp_rel(100, 150, 130, 30),
		   &ts_lable);
    m_lable_set_text(&lable, "Hello world!");

    //remove button from the container
    makise_g_cont_rem(&button1.el);
    
}

void thello()
{
    
}

void tests_hello_init(MHost *h)
{
    m_create_button(&button, &h->host,
		    mp_rel(0, 0, 240, 320),
		    &ts_button);
    m_button_set_click(&button, &click);
    m_button_set_text(&button, "Sosy !");

    m_create_button(&button1, &h->host,
		    mp_rel(200, 200, 85, 30),
		    &ts_button);
    m_button_set_click(&button1, &click1);
    m_button_set_text(&button1, "Click!");

    
    printf("FM initing\n");

        
    //initialize gui elements
    /* m_create_fsviewer(&flist, &h->host, */
    /* 		      mp_sall(100,100,100,100), //position */
    /* 		      MFSViewer_SingleSelect, */
    /* 		      &ts_fsviewer, &ts_fsviewer_item); */
    /* //m_fsviewer_set_onselection(&flist, &onselection); */
	
    /* fsviewer_open(&flist, "/"); */


    


    //mi_cont_rem(&action_container.el);
    
    /* m_create_lable(&lable, host->host, */
    /* 		   mp_rel(20, 20, 80, 30), */
    /* 		   str, */
    /* 		   &ts_lable); */

    /* items[0].text = "lol"; */
    /* items[1].text = "kek"; */
    /* items[2].text = "Привет"; */
    /* m_create_slist(&slist, host->host, */
    /* 		   mp_sall(0,0,0,0), */
    /* 		   "sdf", */
    /* 		   0, 0, */
    /* 		   MSList_List, */
    /* 		   &ts_slist, */
    /* 		   &ts_slist_item); */

    /* makise_g_cont_rem(&slist.el); */

    mi_focus(&button.el, M_G_FOCUS_GET);
}
