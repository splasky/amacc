#include <stdio.h>
#include <stdlib.h>

void mcpy(char *a, char *b, int n)
{
    char *dst;
    dst = a;
    while (n--)
        *a++ = *b++;
}

int main()
{
    char *p;
    int v;
    p = malloc(128);
    mcpy(p, "hello", 6);

    return 0;
}
