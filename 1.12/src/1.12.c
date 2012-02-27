#include <stdio.h>

#define IN  1
#define OUT 0

int main() {
  char c;
  unsigned int state;

  state = OUT;

  while((c = getchar()) != EOF) {

    if(c == ' ' || c == '\n' || c == '\t') {
      if(state == IN) {
        state = OUT;
        putchar('\n');
      } else {
        state = OUT;
      }
    } else {
      putchar(c);
      state = IN;
    }
  }

  return 0;
}

