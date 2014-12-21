#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <linux/spi/spidev.h>

#include <math.h>

#include "spi_lib.h"

#include "colors.h"


int main(int argc, char **argv) {

	int spi_fd,i;
	unsigned char zeros[128],data[128];
	int result;

	spi_fd=spi_open("/dev/spidev0.0", SPI_MODE_0, 100000, 8);
	if (spi_fd<0) {
		exit(-1);
	}

	/* Send a byte acting as a start bit */

	for(i=0;i<128;i++) zeros[i]=0;
	for(i=0;i<128;i++) data[i]=128;

	for(i=0;i<128;i++) {
		result=write(spi_fd,&zeros[i],1);
		if (result<1) {
			printf("error!\n");
			exit(-1);
		}
	}

#define MAX_BRIGHTNESS 64

	int bar=0;

#define PI 3.1415926535897932384

	double x=0;
	double f=(PI/16);

	while(1) {

		x=x+f;
		bar=(int)((sin(x)+1.0)*16.0);

		for(i=0;i<32;i++) {
			if (i<bar) {
				data[(i*3)+1]=128+64;
			} else {
				data[(i*3)+1]=128;
			}
			data[(i*3)+0]=128;
			data[(i*3)+2]=128;
		}

		for(i=0;i<128;i++) {
			result=write(spi_fd,&data[i],1);
			if (result<1) {
				printf("error!\n");
				exit(-1);
			}
		}

		for(i=0;i<128;i++) {
			result=write(spi_fd,&zeros[i],1);
			if (result<1) {
				printf("error!\n");
				exit(-1);
			}
		}
		usleep(10000);

	}

	spi_close(spi_fd);

	return 0;
}
