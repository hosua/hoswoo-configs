#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

void verifyInput(char *str){
	int ch;
	while ((ch =*str++)){
		if (!isdigit(ch)){
			printf("Invalid input, please enter an integer.\n");
			exit(1);
		}
	}
}

int main(int argc, char *argv[]){
	if (argc == 1){
		printf("Please enter number as argument\n");
		return 1;
	}
	verifyInput(argv[1]);
	printf("0x%x\n", atoi(argv[1]));
	return 0;
}
