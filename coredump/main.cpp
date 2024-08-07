#include <iostream>
#include <thread>

void func() {
    int i = 3 / 0;
    std::cout << i << std::endl;
}

int main(int argc, char *argv[]) {
    std::thread t(func);
    t.join();
    return 0;
}
