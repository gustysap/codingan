#include <iostream>

/* run this program using the console pauser or add your own getch, 
system("pause") or input loop */
using namespace std;
void tukar(int *a, int *b){
    int temp;
    temp = *a;
    *a = *b;
    *b = temp;
}
int main(int argc, char** argv) {
    int a,b;
    cout<<"masukkan nilai 1 = ";cin>>a;
    cout<<"masukkan nilai 2 = ";cin>>b;
tukar(&a ,&b);
cout<<"nilai setelah geser ke kanan "<<endl;
cout<<"nilai 1 = "<<a<<endl;
cout<<"nilai 2 = "<<b;

    return 0;
}

