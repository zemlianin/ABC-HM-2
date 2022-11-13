#include <time.h>
#include <stdio.h>

extern void Task(char *array, int *size);
extern void Rand(char *arg, int size, int range, char *A);

int main(int argc, char *argv[])
{
	FILE *input, *output;
	char A[100];
	int size, i, j, command, range, sizeN, sumTime = 0;
	char *param_of_random;
	printf("%s", "input size\n");
	scanf("%d", &size);
	printf("%s", "input command: \n 1 - read from file \n 2 - read from console\n 3 - Random\n 0 - Testing");
	scanf("%d", &command);
	if (command == 1)
	{
		input = fopen("files/input.txt", "r");
		for (i = 0; i < size; i++)
		{
			fscanf(input, "%c", &A[i]);
		}
	}
	if (command == 2)
	{
		for (i = 0; i < size; i++)
		{
			scanf("%c", &A[i]);
		}
	}
	if (command == 3)
	{
		range = 26;
		if (argc < 2)
		{
			param_of_random = "0";
		}
		else
		{
			param_of_random = (argv)[1];
		}
		Rand(param_of_random, size, range, A);
	}
	if (command == 0)
	{
		sizeN = size;
		inpu t = fopen("files/tests.txt", "r");
		output = fopen("files/times.txt", "w");
		for (i = 0; i < 50; i++)
		{
			for (j = 0; j < size; j++)
			{
				fscanf(input, "%c", &A[i]);
			}
			clock_t begin = clock();
			Task(A, &sizeN);
			clock_t end = clock();
			fprintf(output, "%d", (int)(end - begin));
			sumTime += (int)(end - begin);
			fprintf(output, "%s", "\n");
		}
		printf("%s", "Sum of Time in ms: ");
		printf("%d", sumTime);
		return 0;
	}
	Task(A, &size);

	output = fopen("files/output.txt", "w");
	printf("%s", "output command: \n 1 - write B to file \n 2 - write B to console\n");
	scanf("%d", &command);

	if (command == 1)
	{
		for (i = 0; i < size; i++)
		{
			fprintf(output, "%c", A[i]);
		}
	}

	if (command == 2)
	{
		for (i = 0; i < size; i++)
		{
			printf("%c", A[i]);
		}
	}
	return 0;
}
