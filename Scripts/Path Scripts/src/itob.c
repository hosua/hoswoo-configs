#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>


void printBinary(unsigned long long n){
	if (n == 0){
		return;
	}
	printBinary(n >> 1);
	printf("%i", n & 1);
}

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
		printf("Please enter a number as the argument.\n");
		return 1;
	}
	verifyInput(argv[1]);
	printBinary(atoi(argv[1]));
	printf("\n");
	return 0;
}

