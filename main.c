#include <stdio.h>

int c_to_f_asm(int c);
int abs_asm(int x);

int main(void) {
  int res = abs_asm(40);

  printf("res: %d \n",res);

  return 0;
}
