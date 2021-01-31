└🤘-> ./amacc-native -s char.c 
1: #include <stdio.h>
2: #include <stdlib.h>
3: 
4: void mcpy(char *a, char *b, int n)
5: {
6:     char *dst;
7:     dst = a;
8:     while (n--)
9:         *a++ = *b++;
10: }
    ENT  1
    LEA  -1
    PSH 
    LEA  4
    LI  
    SI  
    LEA  2
    PSH 
    LI  
    PSH 
    IMM  1
    SUB 
    SI  
    PSH 
    IMM  1
    ADD 
    BZ   2082370000
    LEA  4
    PSH 
    LI  
    PSH 
    IMM  1
    ADD 
    SI  
    PSH 
    IMM  1
    SUB 
    PSH 
    LEA  3
    PSH 
    LI  
    PSH 
    IMM  1
    ADD 
    SI  
    PSH 
    IMM  1
    SUB 
    LC  
    SC  
    JMP  2082369632
    LEV 
11: 
12: int main()
13: {
14:     char *p;
15:     int v;
16:     p = malloc(128);
17:     mcpy(p, "hello", 6);
18: 
19:     return 0;
20: }
    ENT  2
    LEA  -1
    PSH 
    IMM  128
    PSH 
    MALC
    ADJ  1
    SI  
    LEA  -1
    LI  
    PSH 
    IMM  2081837072
    PSH 
    IMM  6
    PSH 
    JSR  2082369560
    ADJ  3
    IMM  0
    LEV 
