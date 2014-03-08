#include <stdio.h>
#include <stdlib.h>

int main (int argc, char* argv[])
{
	int valor_retorno;
	valor_retorno = system("ls -la");
	return valor_retorno;
}
