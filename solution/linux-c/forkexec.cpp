#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>

int spawn (char* program, char ** arg_list)
{
	pid_t child_pid;

	child_pid = fork();

	if(child_pid != 0)
		//Proceso padre
		return child_pid;
	else {
		execvp (program, arg_list);
		fprintf (stderr, "ERROR\n");
		abort();
	}
}
int main (int argc, char* argv[])
{
	char* arg_list[] = { "ls", "-l" };
	spawn ("ls", arg_list);
	printf("\n\n\t\tPrograma principal está DONE como DONINI\n\n");

	return EXIT_SUCCESS;
}
