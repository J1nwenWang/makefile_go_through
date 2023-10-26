#include <stdio.h>
#include <stdlib.h>

int global_var = 433;

int main(){
    int local_var = 433;
    printf("CSE%d\n", local_var);
}