#include <stdio.h>

int main() {
  char c;
  unsigned int nl, space, tab;

  nl = space = tab = 0;

  while((c = getchar()) != EOF) {
    if(c == '\n') {
      nl++;
    } else if(c == '\t') {
      tab++;
    } else if(c == ' ') {
      space++;
    }
  }

  printf(" %d %d %d", space, tab, nl);
  return 0;
}
