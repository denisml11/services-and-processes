#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main (int argc, char* argv[])
{

	pid_t pid = fork();


	int arrayNumeros[10] = {0,1,2,3,4,5,6,7,8,9};
	char arrayLetras[10] = {'a','b','c','d','e','f','g','h','i','j'};

        FILE *fp;
        fp = fopen ("alumnos.txt", "a+");
	
	if(pid == 0){
		for(int i=0; i<10; i++){
			fprintf(fp, "%i ", arrayNumeros[i]);
		}
	}
	else{
		for(int i=0; i<10; i++){
                        fprintf(fp, "%c ", arrayLetras[i]);
                }
	}

        fclose(fp);

        return EXIT_SUCCESS;
}

