#include <stdio.h>

int main()
{
	int t = 0;
	for (int i = 0; i < 5; ++i)
	{
		for (int j = 0; j < t; ++j)
		{
			printf(" ");
		}
		printf("*****\n");
		t += 2;
	}
	return 0;
}
