#include <stdio.h>
#include <math.h>

int main()
{
	int i = 0,j = 0,k = 0;
	for (i = 1;i <= 9; ++i)
	{
		for (j = 0; j <= 9; ++j)
		{
			for (k = 0; k <= 9; ++k)
			{
				if (pow(i,3) + pow(j,3) + pow(k,3) == i * 100 + j * 10 + k)
				{
					printf("%d\n",i * 100 + j * 10 + k);
				}
			}
		}
	}
	return 0;
}
