#include <stdlib.h>
#include <stdio.h>
void Rand(char* arg, int size, int range, char* A)
{	
	int n = 0, i;
	n = atoi(arg);
	srand(n);
	for(i = 0; i < size; i++){
    		A[i] =  (char)(rand() % range + 'a');
    }
}
