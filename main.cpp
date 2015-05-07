#include <iostream>
#include "functions.h"

void doSomething(){
	std::cout << "I don't think so";
}

int main(){
    print_hello();
    std::cout << std::endl;
    std::cout << "The factorial of 5 is  " << factorial(5) << std::endl;
    return 0;

    if (0){
    	std::cout << "this will be  never executed";
    }
}
