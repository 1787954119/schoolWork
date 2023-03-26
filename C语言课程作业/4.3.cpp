#include <stdio.h>

int main()
{
	int i = 0,j = 0,k = 0;
	for (i = 0; i <= 20; ++i)
	{
		for (j = 0; j <= 33; ++j)
		{
			for (k = 0; k <= 100; ++k)
			{
				if (i + j + k * 3 == 100 && i * 5 + j * 3 + k == 100)
				{
					printf("cock:%d hen:%d chick:%d\n",i,j,k * 3);
				}
			}
		}
	}
	return 0;
}
