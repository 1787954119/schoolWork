#include <stdio.h>
#include <string.h>

int main()
{
	char *a[3] = {"Martin","Andy","Jordan"};
	char b[5] = "ar";
	char *d = NULL;
	d = b;
	for (int i = 0; i < 3; ++i)
	{
		if (strstr(a[i],d))
		{
			printf("%s ",a[i]);
		}
	}
	return 0;
}
