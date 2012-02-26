#include <stdio.h>

#define LOWER 0
#define UPPER 300
#define STEP 20

float to_celsius(float fahr);

int main() {
  float fahr;

  printf("fahrenheit    celcius\n");

  for(fahr = LOWER; fahr <= UPPER; fahr += STEP) {
    printf("%9.1f %9.1f\n", fahr, to_celsius(fahr));
  }

  return 0;
}

float to_celsius(float fahr) {
  return 5.0 / 9.0 * (fahr - 32);
}
