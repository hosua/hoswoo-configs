#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

unsigned int binaryToDecimal(char *str){
	unsigned int decimal = 0;
	int len = strlen(str);	
	int bit = 1;
	char ch;
	for (int i = len-1; i >= 0; i--, bit++)
		if (*(str+i) == '1')
			decimal += pow(2, bit);
	return decimal;
}

int verifyInput(char *str){
	int ch;
	while ((ch = *str++)){
		if (ch != '1' && ch != '0'){
			printf("Input must be a binary number.\n");
			exit(1);
		}
	}
	return 1;
}


int main(int argc, char *argv[]){

	if (argc == 1){
		printf("Please enter number as argument.\n");
		return 1;
	}
	verifyInput(argv[1]);

	printf("%u\n", binaryToDecimal(argv[1]));
	return 0;
}
