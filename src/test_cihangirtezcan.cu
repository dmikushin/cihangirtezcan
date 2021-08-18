#include <cstdio>
#include <cstdlib>

#include "cihangirtezcan/cihangirtezcan.h"

int main(int argc, char* argv[])
{
	if (argc != 2)
	{
		printf("Usage %s <1|2|3>\n"
                	"(1) AES-128 CTR \n"
	                "(2) AES-192 CTR\n"
        	        "(3) AES-256 CTR\n"
                	"Choice: ", argv[0]);
		return 1;
	}

	int choice = atoi(argv[1]);

	if (choice == 1) main128Ctr();
	else if (choice == 2) main192Ctr();
	else if (choice == 3) main256Ctr();

	return 0;
}

