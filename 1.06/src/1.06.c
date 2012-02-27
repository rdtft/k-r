#include <stdio.h>

int main() {
  char c;

  while((c = getchar()) != EOF) {
    printf("%d", c != EOF);
  }

  printf("%d", c != EOF);

  return 0;
}
