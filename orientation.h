/* Includes ------------------------------------------------------------------*/
#include "stm32f4_discovery.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
extern int distance_out[4];
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void send_ultrasound(uint8_t ultrasound,int16_t distance_in);
void check_ultrasound(uint8_t ultrasound);
