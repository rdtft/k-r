#include <stdio.h>

#define LOWER 0
#define UPPER 100
#define STEP 10

float to_fahrenheit(float celsius);

int main() {
  float celsius;

  printf("celcius    fahrenheit\n");

  for(celsius = UPPER; celsius >= LOWER; celsius -= STEP) {
    printf("%9.1f %9.1f\n", celsius, to_fahrenheit(celsius));
  }

  return 0;
}

float to_fahrenheit(float celsius) {
  return celsius * (9.0 / 5.0) + 32;
}
