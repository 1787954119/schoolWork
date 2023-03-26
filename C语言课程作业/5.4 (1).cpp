#include <stdio.h>

int main(void)
{
	int a[6] = {1,2,3,4,5};
	int a2[6] = {0};
	int b = 2;
	int c = 0; 
	for (int i = 0; i < 4; ++i)
	{
		if (b >= a[i] && b < a[i + 1])
		{
			c = i;
			a2[i] = a[i];
			break;
		}
		else
		{
			a2[i] = a[i];
		}
	}
	a2[c + 1] = b;
	for (int i = c + 1; i < 6; ++i)
	{
		a2[i + 1] = a[i];
	}
	for (int i = 0; i < 6; ++i)
	{
		printf("%d ",a2[i]);
	}
	return 0;
}
