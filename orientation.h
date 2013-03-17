/* Includes ------------------------------------------------------------------*/
#include "stm32f4_discovery.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
#define left_ultra 2
#define right_ultra 1
#define center_ultra 0
extern int distance_out[4];
extern int left_white;
extern int right_white;
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void send_ultrasound(uint8_t ultrasound,int16_t distance_in);
void check_ultrasound(uint8_t ultrasound);
void read_ultrasound_check(void);
void read_ADC_check(void);
