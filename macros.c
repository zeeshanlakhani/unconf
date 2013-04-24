#include <stdio.h>
#include <stdlib.h>

#define IS_EVEN(_x) \
	(_x & 1 ? "odd" : "even")

int main(int argc, char *argv[])
{
	int i;

    if (argc < 2) {
		printf("Not enough arguments");
		return 0;
	}

	for (i = 1; i < argc; i++) {
		/* Convert to integer */
		int val = atoi(argv[i]);

		printf( "The number %d is %s\n", val, IS_EVEN(val));
	}
	return 0;
}
