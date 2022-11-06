#include <string.h>

char itoh(int a)
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

