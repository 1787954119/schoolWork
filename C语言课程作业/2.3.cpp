#include <stdio.h>

int main(void)
{
	float f = 0,c = 0;
	printf("Plese input the temperature: ");
	scanf("%f",&f);
	c = float(5) / float(9)* (f - 32.0);
	// 第二种方案：
	// c = 5.0 / 9.0 * (f - 32.0);
	printf("The centigrade is %.2f\n",c);
	return 0;
}
