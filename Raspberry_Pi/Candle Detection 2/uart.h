#ifndef UART_H_INCLUDED
#define UART_H_INCLUDED



#endif // UART_H_INCLUDED
extern int fd;
//char buff[100];


int set_interface_attribs(int fd, int speed, int parity);
void set_blocking(int fd, int should_block);
int init_UART();
int connect_STM32F4();
int main_uart();


