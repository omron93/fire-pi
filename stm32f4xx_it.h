/* Includes ------------------------------------------------------------------*/
#include "stm32f4_discovery.h"

/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
export long left_encoder = 0;
export long right_encoder = 0;
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */
void NMI_Handler(void);
void HardFault_Handler(void);
void MemManage_Handler(void);
void BusFault_Handler(void);
void UsageFault_Handler(void);
void SVC_Handler(void);
void DebugMon_Handler(void);
void PendSV_Handler(void);
void SysTick_Handler(void);
void USART2_IRQHandler(void);
void USART3_IRQHandler(void);
void EXTI9_5_IRQHandler(void);
void EXTI2_IRQHandler(void);
