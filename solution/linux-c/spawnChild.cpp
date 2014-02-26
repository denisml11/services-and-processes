#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

int spawn ()
{
	pid_t child_pid;
	FILE * pfichero;
	char * alumnos[10]= {"pepe", "jose", "denis", "maria", "ana", "davida", "ole", "ola", "hola", "aloh"};
	char * alumnos2[10]= {"sgf", "jsd", "denissf", "mariasfs", "anasss", "davidasss", "oless", "olasss", "holasss", "alohss"};
	child_pid = fork ();
	if (child_pid != 0){
		pfichero = fopen("alumnos.txt", "w");
		for (int i = 0; i < 10; i++)
			fprintf(pfichero, "%s ", alumnos[i]);
	}else {
		pfichero = fopen("alumnos.txt", "a+");
		for (int e = 0; e < 10; e++)
			fprintf(pfichero, "%s ", alumnos2[e]);

	}
}
int main ()
{
	spawn();
	printf ("done with main program\n");
	return 0;
}
