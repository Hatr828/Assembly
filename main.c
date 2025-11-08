#include <stdio.h>

int c_to_f_asm(int num);
int abs_asm(int num);
long sum_to_n_formula_asm(long num);
long sum_array_asm(const long *arr, long len);

int main(void) {
  long arr[] = {1, 2, 3, 4};
  long res = sum_array_asm(arr, 4);

  printf("res: %d \n",res);

  return 0;
}
