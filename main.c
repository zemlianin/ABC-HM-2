#include <string.h>

char itox(int a)
{
    if (a < 10)
    {
        return '0' + a;
    }
    else
    {
        return 'A' + (a - 10);
    }
}

void Task(char *array, int *size)
{
    char B[256];
    int j;
    int current = 0;
    for (j = 0; j < *size; ++j)
    {
        if (array[j] == 'a' || array[j] == 'e' || array[j] == 'i' || array[j] == 'u' || array[j] == 'y' || array[j] == 'o' || array[j] == 'A' || array[j] == 'E' || array[j] == 'I' || array[j] == 'U' || array[j] == 'Y' || array[j] == 'O')
        {
            int code = (int)array[j];
            B[current] = '0';
            current++;
            B[current] = 'x';
            current++;
            B[current] = itox(code / 16);
            current++;
            B[current] = itox(code % 16);
            current++;
        }
        else
        {
            B[current] = array[j];
            current++;
        }
    }
    *size = current;
    strncpy(array, B, current);
}

#include <stdio.h>
int main()
{
    char A[12] = "hello";
    int size = 5;
    Task(&A, &size);
    printf("%s", A);
    return 0;
}
