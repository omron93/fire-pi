#include <string.h>
//#include <errno.h>
#include <termios.h>
#include <iostream>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

using namespace std;
char buff[100];

int counter;
int fd;

int set_interface_attribs(int fd, int speed, int parity)
{
    struct termios tty;
    memset(&tty, 0, sizeof tty);
    if (tcgetattr(fd, &tty) != 0)
    {
        printf("err");//error_message("error %d from tcgetattr", errno);
        return -1;
    }

    cfsetospeed(&tty, speed);
    cfsetispeed(&tty, speed);

    tty.c_cflag = (tty.c_cflag & ~CSIZE) | CS8;     // 8-bit chars
    // disable IGNBRK for mismatched speed tests; otherwise receive break
    // as \000 chars
    tty.c_iflag &= ~IGNBRK;         // ignore break signal
    tty.c_lflag = 0;                // no signaling chars, no echo,
    // no canonical processing
    tty.c_oflag = 0;                // no remapping, no delays
    tty.c_cc[VMIN] = 0;            // read doesn't block
    tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

    tty.c_iflag &= ~(IXON | IXOFF | IXANY); // shut off xon/xoff ctrl

    tty.c_cflag |= (CLOCAL | CREAD); // ignore modem controls,
    // enable reading
    tty.c_cflag &= ~(PARENB | PARODD);      // shut off parity
    tty.c_cflag |= parity;
    tty.c_cflag &= ~CSTOPB;
    tty.c_cflag &= ~CRTSCTS;

    if (tcsetattr(fd, TCSANOW, &tty) != 0)
    {
        printf("err");//error_message("error %d from tcsetattr", errno);
        return -1;
    }
    return 0;
}
void set_blocking(int fd, int should_block)
{
    struct termios tty;
    memset(&tty, 0, sizeof tty);
    if (tcgetattr(fd, &tty) != 0)
    {
        printf("err");//error_message("error %d from tggetattr", errno);
        return;
    }

    tty.c_cc[VMIN] = should_block ? 1 : 0;
    tty.c_cc[VTIME] = 5;            // 0.5 seconds read timeout

    if (tcsetattr(fd, TCSANOW, &tty) != 0)
        printf("err");//error_message("error %d setting term attributes", errno);
}
int init_UART()
{
    char *portname = "/dev/ttyUSB0";
    fd = open (portname, O_RDWR | O_NOCTTY | O_SYNC);
    if (fd < 0)
    {
        printf("err");//error_message("error %d opening %s: %s", errno, portname,strerror(errno));
        return -1;
    }

    set_interface_attribs(fd, B115200, 0); // set speed to 115,200 bps, 8n1 (no parity)
    set_blocking(fd, 0);
    return 0;

}
int connect_STM32F4()
{
   // write(fd, "raspi\n", 6);


    counter = 0;
    int ok;
    while((ok != 1) && (counter < 10))
    {
        write(fd, "raspi\n", 6);
        counter++;

        int n = read(fd, buff, sizeof buff);
        if(n != 0)
        {
            char * pch;
            pch = strtok (buff,"\n");

            while (pch != NULL)
            {
                //printf ("%s\n",pch);
                char *s1 = pch;
                char *s2 = "STM32F4";
                int i = strcmp(pch, s2);

                if(i == 0)
                {
                    ok = 1;
                }

                pch = strtok (NULL, "\n");
            }
            memset(&buff, 0, sizeof buff);


        }
        cout << counter <<  endl;
    }
    ok=1;
    if(ok == 1)
    {
        printf("Spojeni navazano\n");
        return 1;
    }
    printf("Spojeni se nezdarilo - Opakuji\n");
    return 0;
}
int main_uart()
{
    init_UART();

    while(connect_STM32F4() == 0);

    char Candle_Pos[100] = "50|100|30\n";
    write(fd, Candle_Pos, sizeof(Candle_Pos)+1);
    // write(fd, Candle_Pos, sizeof(Candle_Pos)+1);

    while(read(fd, buff, sizeof(buff)) != 0)
    {
        // write(fd, Candle_Pos, sizeof(Candle_Pos));
        printf("Echo: %s\n", buff);
        memset(&buff, 0, sizeof buff);


    }

    close(fd);
}
