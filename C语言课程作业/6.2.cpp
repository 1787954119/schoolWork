#include <stdio.h>
#include <math.h>

void big(float a,float b,float c,float delta);
void equal(float a,float b,float c,float delta);
void small();

int main()
{
	float a = 0,b = 0,c = 0;
	float delta = 0;
	printf("Please input 3 coefficient of the equation ");
	scanf("%f %f %f",&a,&b,&c);
	delta = pow(b,2) - 4 * a * c;
	if (delta > 0)
	{
		big(a,b,c,delta);
	}
	else if (fabs(delta) < 1e-6)
	{
		equal(a,b,c,delta);
	}
	else
	{
		small();
	}
	return 0;
}

void big(float a,float b,float c,float delta)
{
	printf("x1 = %f  x2 = %f",(-b + sqrt(delta)) / 2 * a , (-b - sqrt(delta)) / 2 * a);
}
void equal(float a,float b,float c,float delta)
{
	printf("x1 = x2 = %f",(-b + sqrt(delta)) / 2 * a);
}
void small()
{
	printf("This equation didn't have realnumber solution\n");
}
