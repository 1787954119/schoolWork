#include <stdio.h>
#include <math.h>

bool judge(int a)
{
	for (int i = 2;i <= sqrt(a); i = i + 2)
	{
		if (a % i == 0)
		{
			return false;
		}
	}
	return true;
}

int main()
{
	int a;
	printf("Please input a number: ");
	scanf("%d",&a);
	if (judge(a))
	{
		printf("Yes!\n");
	}
	else
	{
		printf("NO!\n");
	}
	return 0;
}
