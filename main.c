#include <stdio.h>

int c_to_f_asm(int c);

int main(void) {
  int res = c_to_f_asm(-40);

  printf("res: %d \n",res);

  return 0;
}
