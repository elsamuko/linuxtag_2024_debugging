#include <iostream>
#include <thread>
#include <random>

int main( int argc, char* argv[] ) {
    int some_num = 255;
    std::random_device rd;
    int i = 3 / ( rd() % 10 );
    return 0;
}
