#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>

int main(int argc, char** argv)
{
    int x[10] = {8,4,7,2,3,4,0,6,7,9};
    int a = x[0];
    int c = *((int*)((char*)x+7));
    
    printf("a = 0x%x\n", a);
    printf("x = 0x%x\n", x);
    printf("(char*)x = 0x%x\n", (char*)x);
    printf("(char*)x+7 = 0x%x\n", (char*)x+7);
    printf("(int*)((char*)x+7) = 0x%x\n", (int*)((char*)x+7));
    printf("c = 0x%x\n", c);
    printf("a|c = 0x%x\n", a|c);
    return 0;
}