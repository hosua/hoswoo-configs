#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

typedef enum { false, true } bool;
bool startsWith(const char *a, const char *b);
unsigned long long hexToDecimal(char *str);
int verifyInput(char *str);


int main(int argc, char *argv[]){
	if (argc == 1){
		printf("Please enter a hexidecimal number as the argument\n");
		exit(1);
	}
	verifyInput(argv[1]);
	hexToDecimal(argv[1]);
}

/* https://stackoverflow.com/questions/15515088/how-to-check-if-string-starts-with-certain-string-in-c */
bool startsWith(const char *a, const char *b){
   if(strncmp(a, b, strlen(b)) == 0) return 1;
   return 0;
}

unsigned long long hexToDecimal(char *str){
	int len = strlen(str), offset = 0;	
	unsigned long long decimal = 0;
	int placeVal = 0;
	int ch;

	if (startsWith(str, "0x") || startsWith(str, "0X")){
		*(str+=2); len -= 2;
	}	
	for (int i = len-1; i >= 0; i--, placeVal++){
		int num = 0;
		ch = toupper(*(str+i));
		if (isalpha(ch))
			num = ch - 'A' + 10;	
		if (isdigit(ch))
			num = ch - '0';
		decimal += num * pow(16, placeVal);
	}
	printf("%llu\n", decimal);
	return decimal;
}

int verifyInput(char *str){
	int ch;
	if (startsWith(str, "0x") || startsWith(str, "0X"))
		*(str+=2);
	
	while ((ch = toupper(*str++))){
		if (!isdigit(ch) && ch != 'A' && ch != 'B' && ch != 'C' 
						&& ch != 'D' && ch != 'E' && ch != 'F'){
			printf("Invalid input! Please enter a hexidecimal number.\n");
			exit(1);
		}
	}
}

