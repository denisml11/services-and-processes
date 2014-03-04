#include <stdio.h>
#include <stdlib.h>

int main (int argc, char* argv[])
{
	FILE *fp;
	fp = fopen ("alumnos.in", "r");
	fclose(fp);

	return EXIT_SUCCESS;
}
