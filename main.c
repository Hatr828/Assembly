#include <stdio.h>

int c_to_f_asm(int num);
int abs_asm(int num);
long sum_to_n_formula_asm(long num);

int main(void) {
  long long a = 0;
  int res = sum_to_n_formula_asm(10);

  printf("res: %d \n",res);

  return 0;
}
