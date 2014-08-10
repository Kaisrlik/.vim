#include <iostream>


struct xelo{
	int a;
	int b;
};


int main(int argc, const char *argv[])
{
	std::cout << "ahoj " << std::endl;
	xelo a = {0,1};
	a.a = 5;
	return 0;
}
