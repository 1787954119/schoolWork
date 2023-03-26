#include <stdio.h>
#include <string.h>

int main()
{
	char a[10] = {"I am "};
	char b[10] = {"Chinese"};
	char c[20];
	for (int i = 0; i < strlen(a); ++i)
	{
		c[i] = a[i];
	}
	int d = strlen(a);
	for (int i = 0; i < strlen(b); ++i)
	{
		c[i + d] = b[i];
	}
	puts(c);
	return 0;
}
