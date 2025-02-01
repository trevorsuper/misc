/*
Set S is a subset of N that satisfies the following two properties
A natural number n is in S if and only if
1. n=0, or
2. n-3 is in S

N = {0, 1, 2,...} is the set of natural numbers
*/
#include <stdio.h>
int in_S(int n){
  if(n==0){
    return 1;
  }
  else if(n>0){
    in_S(n-3);
  }
  else {
    return 0;
  }
}

int main(){
  for(int i=31; i>-4; i--){
    printf("in_S(%d): %d\n", i, in_S(i));
  }
  return 0;
}