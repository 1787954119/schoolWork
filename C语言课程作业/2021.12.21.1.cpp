#include <stdio.h>
#include <string.h>

int main()
{
	char a[10];
	char *b;
	int count[4] = {0};
	scanf("%s",a);
	b = a;
	for (int i = 0;i < strlen(a); ++i,++b)
	{
		if (*b >= 48 && *b <= 57)
		{
			++count[0];
		}
		else if (*b >= 65 && *b <= 90)
		{
			++count[1];
		}
		else if (*b >= 97 && *b <= 122)
		{
			++count[2];
		}
		else
		{
			++count[3];
		}
	}
	printf("number:%d\nbig:%d\nsmall:%d\nother:%d\n",count[0],count[1],count[2],count[3]);
	return 0;
}
