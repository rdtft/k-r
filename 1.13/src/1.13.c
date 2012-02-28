#include <stdio.h>

#define IN  1
#define OUT 0
#define MAX_WORD_LENGTH 8

void display_histogram(int data[], int len);
int find_max(int array[], int len);

int main() {
  char c;
  int wlength, state;
  int data[MAX_WORD_LENGTH] = { 0 };

  wlength = 0;
  state = OUT;

  while((c = getchar()) != EOF) {
    if(c == ' ' || c == '\n' || c == '\t') {
      if(state == IN) {
        state = OUT;
        data[wlength]++;
        wlength = 0;
      } else {
        state = OUT;
      }
    } else {
      wlength++;
      state = IN;
    }
  }

  display_histogram(data, MAX_WORD_LENGTH);
  return 0;
}

void display_histogram(int data[], int len) {
  int i, j, max;

  max = find_max(data, len);

  for(j = max; j > 0; j--) {
    for(i = 1; i < len; i++) {
      if(data[i] >= j) {
        printf(" * ");
      } else {
        printf("   ");
      }
    }
    printf("\n");
  }

  for(i = 1; i < len; i++) {
    printf(" %d ", i);
  }
  printf("\n");
}

int find_max(int array[], int len) {
  int i, max;

  max = array[0];

  for(i = 0; i < len; i++) {
    if(array[i] > max) {
      max = array[i];
    }
  }

  return max;
}
