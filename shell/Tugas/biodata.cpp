#include <iostream>

using namespace std;

int main(){

// tipe variabel
string nama;
int umur;
char jenis_kelamin;

// proses inpt
cout << "siapakah namamu?" << endl;
cout << "jawab:";

// menyimpan data ke variabel
getline(cin,nama);

cout << "Berapa Umurmu?" << endl;
cout << "jawab: ";
// menyimpan data ke variabel
cin >> umur;

cout << "Jenis Kelamin [L/P]: ";
// menyimpan data ke variabel
cin >> jenis_kelamin;

//proses output

cout << "hei, " << nama << " sekarang kamu berusia ";
cout << umur << " dan kau berjenis kelamin " << jenis_kelamin;

return 0;

}
