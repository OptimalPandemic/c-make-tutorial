#include <stdio.h>
#include <assert.h>
#include "add.h"

int main() {
    printf("Running tests...");
    int a = 1;
    int b = 2;
    assert(add(a,b) == 3);
    printf("Done.\n");
    return 0;
}