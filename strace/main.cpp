#include <iostream>
#include <fstream>

int main( int argc, char* argv[] ) {
    std::cout << "Hello" << std::endl;
    std::ofstream("test") << "blubb";
    return 0;
}
