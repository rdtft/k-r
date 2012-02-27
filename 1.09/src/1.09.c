#include <stdio.h>

int main() {
  char c, last;

  while((c = getchar()) != EOF) {
    if(c != ' ' || last != ' ') {
      putchar(c);
    }

    last = c;
  }

  return 0;
}
