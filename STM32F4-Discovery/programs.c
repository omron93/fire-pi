/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "delay.h"
#include "motor.h"
#include "orientation.h"
#include "pwm.h"
#include "candle_position.h"
#include "stm32f4_discovery.h"
#include "stm32f4xx_it.h"

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
int h,j,k,l,t,d;
long enc_last_left = 0, enc_last_right = 0;
long chaoss = 90;
int program = 0;

int stop_length = 3240;
/* Private function prototypes -----------------------------------------------*/
/* Private functions ---------------------------------------------------------*/
void menu(void)
{
	for (d = 1; d < 4; d++)
	{
		STM_EVAL_LEDOff(LED4);
		STM_EVAL_LEDOff(LED3);
		STM_EVAL_LEDOff(LED5);
		STM_EVAL_LEDOff(LED6);
		STM_EVAL_LEDOn(LED4);
		Delay(70);
		STM_EVAL_LEDOff(LED4);
		STM_EVAL_LEDOn(LED3);
		Delay(70);
		STM_EVAL_LEDOff(LED3);
		STM_EVAL_LEDOn(LED5);
		Delay(70);
		STM_EVAL_LEDOff(LED5);
		STM_EVAL_LEDOn(LED6);
		Delay(70);
	}
	STM_EVAL_LEDOff(LED4);
	STM_EVAL_LEDOff(LED3);
	STM_EVAL_LEDOff(LED5);
	STM_EVAL_LEDOff(LED6);
	deadline(2000);
	while(dead)
	{
		if(STM_EVAL_PBGetState(BUTTON_USER))
		{
			TimintDead = 2000;
			if(program != 6)
			{
				program++;
			}else
			{
				program = 1;
			}
			switch(program)
			{
				case 1:
					STM_EVAL_LEDOn(LED4);
					STM_EVAL_LEDOff(LED3);
					STM_EVAL_LEDOff(LED5);
					STM_EVAL_LEDOff(LED6);
					GPIO_ResetBits(GPIOE, left_LED);
					GPIO_ResetBits(GPIOE, right_LED);
				break;
				case 2:
					STM_EVAL_LEDOn(LED4);
					STM_EVAL_LEDOn(LED3);
					STM_EVAL_LEDOff(LED5);
					STM_EVAL_LEDOff(LED6);
					GPIO_ResetBits(GPIOE, left_LED);
					GPIO_ResetBits(GPIOE, right_LED);
				break;
				case 3:
					STM_EVAL_LEDOn(LED4);
					STM_EVAL_LEDOn(LED3);
					STM_EVAL_LEDOn(LED5);
					STM_EVAL_LEDOff(LED6);
					GPIO_ResetBits(GPIOE, left_LED);
					GPIO_ResetBits(GPIOE, right_LED);
				break;
				case 4:
					STM_EVAL_LEDOn(LED4);
					STM_EVAL_LEDOn(LED3);
					STM_EVAL_LEDOn(LED5);
					STM_EVAL_LEDOn(LED6);
					GPIO_ResetBits(GPIOE, left_LED);
					GPIO_ResetBits(GPIOE, right_LED);
				break;
				case 5:
					STM_EVAL_LEDOn(LED4);
					STM_EVAL_LEDOn(LED3);
					STM_EVAL_LEDOn(LED5);
					STM_EVAL_LEDOn(LED6);
					GPIO_SetBits(GPIOE, left_LED);
					GPIO_ResetBits(GPIOE, right_LED);
				break;
				case 6:
					GPIO_SetBits(GPIOE, left_LED);
					GPIO_SetBits(GPIOE, right_LED);
					STM_EVAL_LEDOn(LED4);
					STM_EVAL_LEDOn(LED3);
					STM_EVAL_LEDOn(LED5);
					STM_EVAL_LEDOn(LED6);
					GPIO_SetBits(GPIOE, left_LED);
					GPIO_SetBits(GPIOE, right_LED);
				break;
			}
			Delay(200);
		}
		else
		{

		}
		
	}
	for (d = 1; d < 10; d++)
	{
		Delay(70);
		STM_EVAL_LEDOn(LED4);
		STM_EVAL_LEDOn(LED3);
		STM_EVAL_LEDOn(LED5);
		STM_EVAL_LEDOn(LED6);
		Delay(70);
		STM_EVAL_LEDOff(LED4);
		STM_EVAL_LEDOff(LED3);
		STM_EVAL_LEDOff(LED5);
		STM_EVAL_LEDOff(LED6);
	}
	
}
void candle_sawed(void)
{
	int error = 0;
	int backway = 0;
	int back_lenght = 0;
	while(candle_saw == 1)
	{
		stop_robot(block);
		Delay(500);
			if(candle_pos > RIGHT_CANDLE)
			{
				/*
				STM_EVAL_LEDOn(LED5);
				STM_EVAL_LEDOff(LED4);
				STM_EVAL_LEDOff(LED3);*/
				//USART_puts(USART2, "right");
				//move(left, backward, 600);
				//move(right, forward, 600);			
				move_unit_single(right, backward, 800,length, 5);
				stop_robot(block);
				back_lenght-=5;
			}
			else if(candle_pos < LEFT_CANDLE)
			{
				//USART_puts(USART2, "left");
				/*STM_EVAL_LEDOn(LED4);	
				STM_EVAL_LEDOff(LED5);
				STM_EVAL_LEDOff(LED3);*/
				//move(left, forward, 600);
				//move(right, backward, 600);
				move_unit_single(right, forward, 800,length, 5);
				stop_robot(block);
				back_lenght+=5;
			}
			else 
			{
				//	USART_puts(USART2, "center");
				/*STM_EVAL_LEDOn(LED3);
				STM_EVAL_LEDOff(LED5);
				STM_EVAL_LEDOff(LED4);*/
				stop(left,coast);
				stop(right,coast);
				Delay(500);
				blow();
				Delay(2000);
				error++;
				if(error > 2)
				{
					backway += 400;
					move_unit_double(forward, 800, length, 400);
					stop_robot(block);
					Delay(500);
					blow();
					Delay(2000);
					error = 0;
				}
			}
	}
	move_unit_double(backward, 800, length, backway);
	stop_robot(block);
	move_double(forward, 1000);
	backway = 0;
	if(back_lenght<=0)
		move_unit_single(right, forward, 800,length, -back_lenght);
	else
		move_unit_single(right, backward, 800,length, back_lenght);
	stop_robot(block);
	move_double(forward, 1000);
}
void chaos_simple(void)
{
		
		if(candle_saw == 0)
		{
			if(left_white || right_white ||(distance_out[center_ultra] < 30)||(distance_out[left_ultra] < 30)||(distance_out[right_ultra] < 30))
			{
				/*if(distance_out[right_ultra] < 30)
				{
					//move(left, forward, 800);
					move(right, backward, 800);
				}else if(distance_out[left_ultra] < 30)
				{
					move(left, backward, 800);
					//move(right, forward, 800);
				}	else
				{*/
					move(left, backward, 800);
					move(right, forward, 800);
				//}	
			}else
			{
				move(left, forward, 800);
				move(right, forward, 800);
			}
		}else if(candle_saw == 1)candle_sawed();

		

}

void loop_wall(void)
{
	if(distance_out[left_ultra] < 25)
	{
		while(distance_out[left_ultra] < 25)
		{
			move(left, forward, 800);
			move(right, forward, 800);
			if(candle_saw == 1)candle_sawed();
		}
	}
	else
	{
		if(candle_saw == 1)candle_sawed();
		move_unit_double(forward, 800, length, 5);
		if(candle_saw == 1)candle_sawed();
		move_robot_degree(-90, 800);
		if(candle_saw == 1)candle_sawed();
		move_unit_double(forward, 800, length, 25);
		if(candle_saw == 1)candle_sawed();
		move_robot_degree(-90, 800);
		if(candle_saw == 1)candle_sawed();
	}
}
void homologation(void)
{
		if(candle_saw == 1)
		{
			candle_sawed();
		}
		else if(candle_saw == 0)
		{
			for (h = 1; h < 200; h++) 
			{
				if(candle_saw == 1)candle_sawed();
				if(distance_out[center_ultra]<20)move_unit_double(backward, 800, length, 400);
				if((right_white ==1)||(left_white == 1))
				{
					move_unit_double(backward, 800, length, 400); 
					move_unit_single(right, backward, 800,length, 30);
				}
				move_unit_double(forward, 800, length, 1);
			}
			for (h = 1; h < 30; h++) 
			{
				if(candle_saw == 1)candle_sawed();
				move_robot_degree(-1, 800);
				//move_unit_single(right, forward, 800,length, 5);
				stop_robot(block);
			}
			Delay(500);
			for (h = 1; h < 60; h++) 
			{
				if(candle_saw == 1)candle_sawed();
				move_robot_degree(1, 800);
				//move_unit_single(right, backward, 800,length, 5);
				stop_robot(block);
			}
			Delay(500);
			for (h = 1; h < 30; h++) 
			{
				if(candle_saw == 1)candle_sawed();
				move_robot_degree(-1, 800);
				//move_unit_single(right, forward, 800,length, 5);
				stop_robot(block);
			}
		}
}
void stop_on_line(void)
{
	if((right_white ==1)||(left_white == 1))
	{
		stop_robot(block);
		Delay(5000);
	}else
	{
		move_double(forward,800);
	}


}
void follow_line(void)
{
	if((distance_out[left_ultra]<20)||(distance_out[center_ultra]<20))
	{
		stop_robot(block);
		Delay(300);
		move_robot_degree(90, 800);
		//move_unit_double(forward, 800, length, 80);
		move_robot_degree(-90, 800);
		move_unit_double(forward, 800, length, 150);
		move_robot_degree(-90, 800);
		//move_unit_double(forward, 800, length, 80);
		stop_robot(block);
		Delay(500);
		if(candle_saw == 1)candle_sawed();
		move_robot_degree(90, 800);
		
	}
	if(right_white ==1)
	{
		//stop(right,block);
		//move(left,forward,500);
		move_unit_double(backward,700,length,50);
		move_robot_degree(15,800);
	}else if(left_white ==1)
	{
		move_unit_double(backward,700,length,50);
		move_robot_degree(-15,800);
	}else
	{
		move_double(forward,1000);
	}
	
	if(left_encoder<right_encoder?(left_encoder>(enc_last_left+562)):(right_encoder>(enc_last_right+562)))
	{
		enc_last_left+=562;
		enc_last_right+=562;
		stop_robot(block);
		move_unit_single(right, forward, 800,length, 243);
		stop_robot(block);
		Delay(1000);
		if(candle_saw == 1)candle_sawed();
		move_unit_single(right, backward, 800,length, 243);
		stop_robot(block);
	}
}
void go_to_center(void)
{
	int start_line = 0;
	if(left_white == 1)start_line = left;
		else start_line = right;
	move_unit_double(forward,900,length,1220);
	if(start_line == left)move_robot_degree(90, 800);
		else move_robot_degree(-90, 800);
	
	while(1)
	{
		if(left_encoder<right_encoder?(left_encoder>(enc_last_left+360)):(right_encoder>(enc_last_right+360)))
    {
			enc_last_left+=360;
			enc_last_right+=360;
			if(candle_saw == 1)
			candle_sawed();
			for(t=1;t<9;t++)
			{
				for (h = 1; h < 45; h++) 
				{
					if(candle_saw == 1)candle_sawed();
					move_robot_degree(1, 800);
				}
				stop_robot(block);
				if(t!= 8)Delay(300);
				if(candle_saw == 1)candle_sawed();
			}
    }
		
		
		if(left_white || right_white || (distance_out[left_ultra] < 20) || (distance_out[right_ultra] < 20) || (distance_out[center_ultra] < 20))
		{
				stop_robot(block);
				if(left_white || (distance_out[left_ultra] < 20))
				{
						for (h = 1; h < chaoss; h++)
								{
										if(candle_saw == 1)
											 candle_sawed();
										move_robot_degree(1, 800);
										stop_robot(block);
								}
				}
				else if(right_white || (distance_out[right_ultra] < 20))
				{
						for (h = 1; h < chaoss; h++)
								{
										if(candle_saw == 1)
											 candle_sawed();
										move_robot_degree(-1, 800);
										stop_robot(block);
								}
				}
				else
				{
					 move_unit_double(backward, 800, length, 300);
					 stop_robot(block);
					 for (h = 1; h < chaoss; h++)
								{
										if(candle_saw == 1)
											 candle_sawed();
										move_robot_degree(-1, 800);
										stop_robot(block);
								}
				}
				stop_robot(block);
				chaoss += 10;
				if(chaoss > 130)
				{
						chaoss = 90;
				}
				move_double(forward, 800);
		}
	}
}
void chaos(void)
{
    move_double(forward, 1000); //oba motory naplno dopředu
    while(1)
    {
        if(left_encoder<right_encoder?(left_encoder>(enc_last_left+stop_length)):(right_encoder>(enc_last_right+stop_length))) //když ujede určitou vzdálenost
        {
           enc_last_left+=stop_length;
           enc_last_right+=stop_length;
           for(t=1;t<9;t++) //8x se pootočit o 45 stupňů
						{
							for (h = 1; h < 45; h++) //pootočit robota o 45 stupňů
							{
								if(candle_saw == 1)candle_sawed();//když vidí svíčku
								move_robot_degree(1, 800);//pootočit o 1 stupeň
								stop_robot(block);//zastavit robota
							}
							stop_robot(block);
							if(t!= 8)Delay(500);
							if(candle_saw == 1)candle_sawed();//když vidí svíčku
						}
            move_double(forward, 1000);//oba motory naplno dopředu
        }
        if(left_white || right_white || (distance_out[left_ultra] < 20) || (distance_out[right_ultra] < 20) || (distance_out[center_ultra] < 20)) //pokud je na čáře nebo vidí stěny
        {
            stop_robot(block); //zastavit robota
            if(left_white || (distance_out[left_ultra] < 20)) //je na čáře nebo u stěny levým senzorem
            {
                for (h = 1; h < chaoss; h++) //pootočit o 90-120 stupňů
                    {
                        if(candle_saw == 1)//když vidí svíčku
                           candle_sawed();
                        move_robot_degree(1, 800);//pootočit o 1 stupeň
                        stop_robot(block);//zastavit robota
                    }
            }
            else if(right_white || (distance_out[right_ultra] < 20)) //je na čáře nebo u stěny pravým senzorem
            {
                for (h = 1; h < chaoss; h++) //pootočit o 90-120 stupňů
                    {
                        if(candle_saw == 1)//když vidí svíčku
                           candle_sawed();
                        move_robot_degree(-1, 800);//pootočit o 1 stupeň
                        stop_robot(block);//zastavit robota
                    }
            }
            else if(distance_out[center_ultra] < 20)  //je u stěny středním senzorem
            {
               move_unit_double(backward, 800, length, 150);
               stop_robot(block);
               for (h = 1; h < chaoss; h++) //pootočit o 90-120 stupňů
                    {
                        if(candle_saw == 1)//když vidí svíčku
                           candle_sawed();
                        move_robot_degree(-1, 800); //pootočit o 1 stupeň
                        stop_robot(block);//zastavit robota
                    }
            }
						
            stop_robot(block); //zastavit robota
            chaoss += 10;
            if(chaoss > 120)
            {
                chaoss = 90;
            }
            move_double(forward, 1000); //oba motory naplno dopředu
						
        }
				if(candle_saw == 1) //když vidí svíčku
                       candle_sawed();
    }
}		
void wall_detect(void)
{
	if((distance_out[left_ultra] < 30) || (distance_out[right_ultra] < 30) || (distance_out[center_ultra] < 20))
	{
		if(distance_out[center_ultra] < 15)
		{
			//move_unit_double(backward, 800, length, 100);
			if(distance_out[left_ultra] > distance_out[right_ultra])
			{
				while(distance_out[right_ultra] < 30)
				{
					move(left, backward, 800);
					move(right, forward, 800);
				}
			}else
			{
				while(distance_out[left_ultra] < 30)
				{
					move(right, backward, 800);
					move(left, forward, 800);
				}
			}
		}
		else if(distance_out[right_ultra] < distance_out[left_ultra])
		{
			stop(left, block);
			move(right, forward, 800);
		}else if(distance_out[right_ultra] > distance_out[left_ultra])
		{
			stop(right, block);
			move(left, forward, 800);
		}
	}else
	{
		move(left, forward, 800);
		move(right, forward, 800);
	}

}
