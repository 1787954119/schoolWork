#include <iostream>

using namespace std;

int main()
{
	int n = 0;
	cin >> n;
	if (n % 2 == 0)
	{
		cout << "error !" << endl;
		return 0;
	}
	int t = n / 2;
	for (int i = 1; i <= n / 2; ++i)
	{
		for (int j = 1; j <= t; ++j)
		{
			cout << " ";
		}
		for (int k = 1; k <= n - t * 2;++k)
		{
			cout << "*";
		}
		cout << endl;
		--t;
	}
	for (int i = 1; i <= n / 2 + 1; ++i)
	{
		for (int j = 1; j <= t; ++j)
		{
			cout << " ";
		}
		for (int k = 1; k <= n - t * 2;++k)
		{
			cout << "*";
		}
		cout << endl;
		++t;
	}

