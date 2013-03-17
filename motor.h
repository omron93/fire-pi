/* Includes ------------------------------------------------------------------*/
#include "stm32f4_discovery.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
//Left motor
#define leftPWM 2
#define logicleft1 GPIO_Pin_0
#define logicleft2 GPIO_Pin_3
#define left_LED GPIO_Pin_6

//Right motor
#define rightPWM 1
#define logicright1 GPIO_Pin_2
#define logicright2 GPIO_Pin_1
#define right_LED GPIO_Pin_4

//Constatens for move functions
#define left 0
#define right 1
#define backward 0
#define forward 1

#define block 2
#define brake 1
#define coast 0

#define degree 0
#define length 1

extern int block_left;
extern int block_left_pos;
extern int block_right;
extern int block_right_pos;
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void move(int motor, int way, int torque);
void stop(int motor, int style);
void move_unit_single(int motor, int way, int torque, int unit, int num);
void move_unit_double(int way, int torque, int unit, int num);
/* Exported variables ------------------------------------------------------- */
