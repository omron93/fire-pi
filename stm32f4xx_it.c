/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_it.h"
#include "main.h"
#include "usart.h"
#include "delay.h"
#include "candle_position.h"
#include "orientation.h"
#include "motor.h"
#include <misc.h>	
#include <string.h>
#include <stdio.h>

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
#define MAX_STRLEN 50 //maximum string length
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
///USARTS:::::::::::::::::::::::::::::::::::::::
char received_string2[MAX_STRLEN+1];
char received_string3[MAX_STRLEN+1];
static uint16_t cnt2 = 0; // USART2 input string length
static uint16_t cnt3 = 0; // USART3 input string length
char *s1;
char *rs;
char *ps;
char strr;
int i ;
int cnt = 0;
int candle [2];
///USARTS:::::::::::::::::::::::::::::::::::::::

long left_encoder = 0;
long right_encoder = 0;

int32_t counter_old_9 = 0;
int32_t counter_9 = 0;
int32_t distance_9 = 0;

int32_t counter_old_8 = 0;
int32_t counter_8 = 0;
int32_t distance_8 = 0;

int32_t counter_old_7 = 0;
int32_t counter_7 = 0;
int32_t distance_7 = 0;

int32_t counter_old_6 = 0;
int32_t counter_6 = 0;
int32_t distance_6 = 0;

/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/

/******************************************************************************/
/*            Cortex-M3 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief   This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
  /* Go to infinite loop when Hard Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
  /* Go to infinite loop when Memory Manage exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
  /* Go to infinite loop when Bus Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
  /* Go to infinite loop when Usage Fault exception occurs */
  while (1)
  {
  }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles PendSVC exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
  TimingDelay_Decrement();
	read_ultrasound_check();
	read_ADC_check();
}
/**
  * @brief  This function handles USART2 Handler.
  * @param  None
  * @retval None
  */
void USART2_IRQHandler(void)
{

	// check if the USART3 receive interrupt flag was set
	if( USART_GetITStatus(USART2, USART_IT_RXNE) ){
		
		char t = USART2->DR; // the character from the USART3 data register is saved in t
		STM_EVAL_LEDOn(LED6);
		/* check if the received character is not the LF character (used to determine end of string) 
		 * or the if the maximum string length has been been reached 
		 */
		if( (t != '\n') && (cnt2 < MAX_STRLEN) ){ 
			received_string2[cnt2] = t;
			cnt2++;
		}
		else{ // otherwise reset the character counter and print the received string
			received_string2[cnt2] = '\0';
			cnt2 = 0;
			//STM_EVAL_LEDOn(LED3);
			

			rs = received_string2;
			s1 = "raspi";		
			
			i = strcmp(s1, rs);		
			if(i == 0)					 
			{							
				USART_puts(USART2, "STM32F4\n");							
				//STM_EVAL_LEDToggle(LED6);
			} 
			
			//USART_puts(USART3, received_string3);
		
			ps = strtok(rs,"|");		
			
			while (ps != NULL)	
			{							 

					
					s1 = "c";		
					i = strcmp(s1, ps);		
					if(i == 0)					 
					{										
								ps = strtok (NULL, "/");
								while (ps != NULL)	
								{
									sscanf (ps, "%d", &candle[cnt]);
 									ps = strtok (NULL, "/");	
									cnt++;
								}
								candle_saw = 1;
								candle_position(candle [0],candle [1]);
								STM_EVAL_LEDOn(LED6);
								cnt = 0;
					}
					s1 = "cn";		
					i = strcmp(s1, ps);		
					if(i == 0)					 
					{										
								candle_saw = 0;
								STM_EVAL_LEDOff(LED6);
					}
					ps = strtok (NULL, "|");	 
			}		
		}
	}
}
/**
  * @brief  This function handles USART3 Handler.
  * @param  None
  * @retval None
  */
void USART3_IRQHandler(void)
{

	// check if the USART3 receive interrupt flag was set
	if( USART_GetITStatus(USART3, USART_IT_RXNE) )
	{
		
		
		char t = USART3->DR; // the character from the USART3 data register is saved in t
		
		/* check if the received character is not the LF character (used to determine end of string) 
		 * or the if the maximum string length has been been reached 
		 */
		if( (t != '\n') && (cnt3 < MAX_STRLEN) ){ 
			received_string3[cnt3] = t;
			cnt3++;
		}
		else
		{ // otherwise reset the character counter and print the received string
			received_string3[cnt3] = '\0';
			cnt3 = 0;
			

				 
		}		
	}
}

/**
  * @brief  This function handles External line 0 interrupt request.
  * @param  None
  * @retval None
  */
void EXTI9_5_IRQHandler(void)
{
	if(EXTI_GetITStatus(EXTI_Line6) != RESET)
  {
		
		counter_6 = TIM3->CNT;
		if(GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_6))
		{
			counter_old_6 = counter_6;
		}else
		{
			if((counter_6 > counter_old_6) && (counter_6- counter_old_6) < 1160 )
			{
				distance_6 = ((counter_6-counter_old_6)*10)/58;
			}else if((counter_6 < counter_old_6))
			{
				distance_6 = ((50000-counter_old_6+counter_6)*10)/58;
			}else
			{
				distance_6 = -1;
			}
			send_ultrasound (1,distance_6);
		}
    /* Clear the EXTI line 0 pending bit */
    EXTI_ClearITPendingBit(EXTI_Line6);
  }
	if(EXTI_GetITStatus(EXTI_Line7) != RESET)
  {
		counter_7 = TIM3->CNT;
		if(GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_7))
		{
			counter_old_7 = counter_7;
		}else
		{
			if((counter_7 > counter_old_7) && (counter_7 - counter_old_7) < 1160 )
			{
				distance_7 = ((counter_7-counter_old_7)*10)/58;
			}else if((counter_7 < counter_old_7))
			{
				distance_7 = ((50000-counter_old_7+counter_7)*10)/58;
			}else
			{
				distance_7 = -1;
			}
			send_ultrasound (2,distance_7);
		}

    /* Clear the EXTI line 0 pending bit */
    EXTI_ClearITPendingBit(EXTI_Line7);
  }
	if(EXTI_GetITStatus(EXTI_Line8) != RESET)
  {
		counter_8 = TIM3->CNT;
		if(GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_8))
		{
			counter_old_8 = counter_8;
		}else
		{
			if((counter_8 > counter_old_8) && (counter_8 - counter_old_8) < 1160 )
			{
				distance_8 = ((counter_8-counter_old_8)*10)/58;
			}else if((counter_8 < counter_old_8))
			{
				distance_8 = ((50000-counter_old_8+counter_8)*10)/58;
			}else
			{
				distance_8 = -1;
			}
			send_ultrasound (3,distance_8);
		}

    
    /* Clear the EXTI line 0 pending bit */
    EXTI_ClearITPendingBit(EXTI_Line8);
  }
	
	
	if(EXTI_GetITStatus(EXTI_Line9) != RESET)
  {
		counter_9 = TIM3->CNT;
		if(GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_9))
		{
			counter_old_9 = counter_9;
		}else
		{
			if((counter_9> counter_old_9) && (counter_9 - counter_old_9) < 1160 )
			{
				distance_9 = ((counter_9-counter_old_9)*10)/58;
			}else if((counter_9 < counter_old_9))
			{
				distance_9 = ((50000-counter_old_9+counter_9)*10)/58;
			}else
			{
				distance_9 = -1;
			}
			send_ultrasound (4,distance_9);
		}
    /* Clear the EXTI line 0 pending bit */
    EXTI_ClearITPendingBit(EXTI_Line9);
  }
	

}
void EXTI0_IRQHandler(void)
{
	if(EXTI_GetITStatus(EXTI_Line0) != RESET)
  {
		if(GPIO_ReadInputDataBit(GPIOD, GPIO_Pin_2))
		{
			left_encoder--;
		}else
		{
			left_encoder++;
		}
		if(block_left == block)
		{
			if((left_encoder == block_left_pos-2)||(left_encoder == block_left_pos+2))
			{
				GPIO_SetBits(GPIOE, logicleft1);
				GPIO_SetBits(GPIOE, logicleft2);
			}
			else if(left_encoder > block_left_pos+1)
			{
				GPIO_SetBits(GPIOE, logicleft2);
				GPIO_ResetBits(GPIOE, logicleft1);
			}else if(left_encoder < block_left_pos-1)
			{
				GPIO_SetBits(GPIOE, logicleft1);
				GPIO_ResetBits(GPIOE, logicleft2);
			}
		}
			
    /* Clear the EXTI line 0 pending bit */
    EXTI_ClearITPendingBit(EXTI_Line0);
  }
}
void EXTI4_IRQHandler(void)
{
	if(EXTI_GetITStatus(EXTI_Line4) != RESET)
  {
		if(GPIO_ReadInputDataBit(GPIOD, GPIO_Pin_6))
		{
			right_encoder--;
		}else
		{
			right_encoder++;
		}
		if(block_right == block)
		{
			if((right_encoder == block_right_pos-2)||(right_encoder == block_right_pos+2))
			{
				GPIO_SetBits(GPIOE, logicright1);
				GPIO_SetBits(GPIOE, logicright2);
			}else	if(right_encoder > block_right_pos+1)
			{
				GPIO_SetBits(GPIOE, logicright2);
				GPIO_ResetBits(GPIOE, logicright1);
			}else if(right_encoder < block_right_pos-1)
			{
				GPIO_SetBits(GPIOE, logicright1);
				GPIO_ResetBits(GPIOE, logicright2);
			}

		}
    /* Clear the EXTI line 0 pending bit */
    EXTI_ClearITPendingBit(EXTI_Line4);
  }
}


/******************************************************************************/
/*                 STM32F4xx Peripherals Interrupt Handlers                   */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f4xx.s).                                               */
/******************************************************************************/

/**
  * @brief  This function handles PPP interrupt request.
  * @param  None
  * @retval None
  */
/*void PPP_IRQHandler(void)
{
}*/

/**
  * @}
  */ 

/**
  * @}
  */ 
