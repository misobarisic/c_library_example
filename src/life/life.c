#include <stdio.h>

int meaningOfLife() {
  return 42;
}

// Function that is called when the library is loaded
void __attribute__ ((constructor)) initLibrary(void) {
    printf("Library is initialized\n"); 
}

// Function that is called when the library is closed.
void __attribute__ ((destructor)) cleanUpLibrary(void) {
    printf("Library is exited\n"); 
}
