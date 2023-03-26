#include <stdio.h>

int main(void)
{
	int a[6] = {1,2,3,4,5};
	int b = 2;
	int c = 0; 
	for (int i = 0; i < 4; ++i)
	{
		if (b >= a[i] && b < a[i + 1])
		{
			c = i;
			break;
		}
	}
	for (int i = 4; i >= c; --i)
	{
		a[i + 1] = a[i];
	}
	a[c] = b;
	for (int i = 0; i < 6; ++i)
	{
		printf("%d ",a[i]);
	}
	return 0;
}
