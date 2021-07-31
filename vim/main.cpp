#include <iostream>
using namespace std;
int x = 10;

int func() {
    static int x=1;
    x += 1;
    return x;
}


int main() {
    int x;
    for (int i=1;i<=5;i++){
        cout<<func()<<endl;
    }

    return 0;
}
