#include <stdio.h>

double calculate(int n)
{
	double c = 0;
	long long b = 1;
	for (int i = 1; i <= n; ++i)
	{
		b = 1;
		for (int j = 1; j <= i; ++j)
		{
			b *= j;		
	    }
		c += 1.0 / b;  
	}
	return c;
}

int main()
{
	int n;
	scanf("%d",&n);
	printf("%.30lf",calculate(n));
	return 0;
}
