/* Includes ------------------------------------------------------------------*/
#include "stm32f4_discovery.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
//Left motor
#define leftPWM 2
#define logicleft1 GPIO_Pin_2
#define logicleft2 GPIO_Pin_1
#define left_LED GPIO_Pin_4

//Right motor
#define rightPWM 1
#define logicright1 GPIO_Pin_0
#define logicright2 GPIO_Pin_3
#define right_LED GPIO_Pin_6

//Constatens for move functions
#define left 0
#define right 1
#define backward 0
#define forward 1

#define block 2
#define brake 1
#define coast 0
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void move(int motor, int way, int torque);
void stop(int motor);
/* Exported variables ------------------------------------------------------- */
