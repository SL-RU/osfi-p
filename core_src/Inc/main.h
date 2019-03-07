/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2019 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define AS_SCK_Pin GPIO_PIN_2
#define AS_SCK_GPIO_Port GPIOE
#define AG_0_Pin GPIO_PIN_3
#define AG_0_GPIO_Port GPIOE
#define AG_1_Pin GPIO_PIN_4
#define AG_1_GPIO_Port GPIOE
#define AS_MISO_Pin GPIO_PIN_5
#define AS_MISO_GPIO_Port GPIOE
#define AS_MOSI_Pin GPIO_PIN_6
#define AS_MOSI_GPIO_Port GPIOE
#define CRYST_2_Pin GPIO_PIN_0
#define CRYST_2_GPIO_Port GPIOC
#define A_SD_Pin GPIO_PIN_3
#define A_SD_GPIO_Port GPIOC
#define CRYST_1_Pin GPIO_PIN_3
#define CRYST_1_GPIO_Port GPIOA
#define C1_Pin GPIO_PIN_6
#define C1_GPIO_Port GPIOA
#define C2_Pin GPIO_PIN_7
#define C2_GPIO_Port GPIOA
#define C3_Pin GPIO_PIN_4
#define C3_GPIO_Port GPIOC
#define C4_Pin GPIO_PIN_5
#define C4_GPIO_Port GPIOC
#define C5_Pin GPIO_PIN_0
#define C5_GPIO_Port GPIOB
#define C6_Pin GPIO_PIN_1
#define C6_GPIO_Port GPIOB
#define BAT_INT_Pin GPIO_PIN_13
#define BAT_INT_GPIO_Port GPIOE
#define BAT_CE_Pin GPIO_PIN_14
#define BAT_CE_GPIO_Port GPIOE
#define BAT_PG_Pin GPIO_PIN_15
#define BAT_PG_GPIO_Port GPIOE
#define BAT_SCL_Pin GPIO_PIN_10
#define BAT_SCL_GPIO_Port GPIOB
#define BAT_SDA_Pin GPIO_PIN_11
#define BAT_SDA_GPIO_Port GPIOB
#define A_WS_Pin GPIO_PIN_12
#define A_WS_GPIO_Port GPIOB
#define A_SCK_Pin GPIO_PIN_13
#define A_SCK_GPIO_Port GPIOB
#define AG_2_Pin GPIO_PIN_3
#define AG_2_GPIO_Port GPIOD
#define AG_3_Pin GPIO_PIN_4
#define AG_3_GPIO_Port GPIOD
#define AG_4_Pin GPIO_PIN_5
#define AG_4_GPIO_Port GPIOD
#define L_MOSI_Pin GPIO_PIN_6
#define L_MOSI_GPIO_Port GPIOD
#define L_SCK_Pin GPIO_PIN_3
#define L_SCK_GPIO_Port GPIOB
#define L_MISO_Pin GPIO_PIN_4
#define L_MISO_GPIO_Port GPIOB
#define AC_SCL_Pin GPIO_PIN_6
#define AC_SCL_GPIO_Port GPIOB
#define AC_SDA_Pin GPIO_PIN_7
#define AC_SDA_GPIO_Port GPIOB
#define L_CS_Pin GPIO_PIN_8
#define L_CS_GPIO_Port GPIOB
#define L_DC_Pin GPIO_PIN_9
#define L_DC_GPIO_Port GPIOB
#define L_RST_Pin GPIO_PIN_0
#define L_RST_GPIO_Port GPIOE
#define L_LED_Pin GPIO_PIN_1
#define L_LED_GPIO_Port GPIOE
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
