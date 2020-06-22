#include<stdio.h>
#include"../add/add.h"
#include"../sub/sub.h"
int main(void)
{
  int a,b;
  a=1;
  b=2;
  printf("%d\n",add(a,b));
  printf("%d\n",sub(a,b));
  return 0;
}
