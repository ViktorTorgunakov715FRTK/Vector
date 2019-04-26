// It works but you should redefine operator== and operator<<.
#include "class_vector.h"
#include <iostream>

const int LIMIT = 1333;




int main( ) 
{
	srand((unsigned int)time(0));

    my_lib::Vector<bool> vect(1);
    for (int ind = 0; ind < LIMIT; ind++) {
      vect.push_back(rand( ) % 2);
    }
    vect.dump( );
    return EXIT_SUCCESS;
}