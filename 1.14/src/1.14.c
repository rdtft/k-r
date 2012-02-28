#include <stdio.h>
#include <ctype.h>

int main() {
  char c;
  int i, j;
  char clength[127] = { 0 };

  while((c = getchar()) != EOF) {
    if(isalpha(c)) {
      clength[(int)c]++;
    }
  }

  for(i = 48; i < 127; i++) {
    if(clength[i] > 0) {
      printf("%c : ", (char)i);

      for(j = 0; j < clength[i]; j++) {
        printf("*");
      }

      printf("\n");
    }
  }

  printf("\n");
  return 0;
}
