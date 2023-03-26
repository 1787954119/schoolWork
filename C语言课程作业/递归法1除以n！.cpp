#include <stdio.h>

long long factorial(int n)
{
	if (n == 0)
	{
		return 1;
	}
	else
	{
		return n * factorial(n - 1);
	}
}

double calculate(int n)
{
	double c = 0;
	for (int i = 1; i <= n; ++i)
	{
		c += 1.0 / double(factorial(i));
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
