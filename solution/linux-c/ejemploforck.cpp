#include <stdio.h>
#include <sys/types.h>
#include <stdlib.h>
#include <unistd.h>

int main (int argc, char* argv[])
{
	pid_t child_pid;

	printf("Id del programa principal %d\n", getpid());

	child_pid = fork();
	if (child_pid !=0){
		printf("Este es el proceso padre, con la ID %d\n", getpid());
		printf("La ID del proceso hijo es: %d\n", child_pid);

	}
	else 
		printf("Este es el proceso hijo, con la ID %d\n", getpid());
	return EXIT_SUCCESS;
}
