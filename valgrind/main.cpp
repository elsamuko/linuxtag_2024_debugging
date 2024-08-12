#include <iostream>

int main( int argc, char* argv[] ) {

    int* x = ( int* )malloc( 10 * sizeof( int ) );
    x[10] = 0; // overrun

    std::cout << "Done!" << std::endl;
    return 0;
}
