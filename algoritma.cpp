#include<iostream>
#include<functional>
#include<bits/stdc++.h>
#include<string>
using namespace std;

int main()
{
  //deklarasi:
  //n = jumlah data
  //i & j = array
  //awal = posisi sortir
  //temp = variabel bantuan mamindahkan data
  int i, j, n, awal, temp, min, rating[40], harga[40], pil;
  string nama[40];

  cout << "Masukkan Jumlah Data: ";
  cin >> n;
  cout << endl;

  for(i=0;i<n;i++)
  {
    cout << "Nama Barang ke-" << i+1 << "   : ";
    cin.ignore();
    getline(cin, nama[i]);
    cout << "Rating Barang ke-" << i+1 << " : ";
    cin >> rating[i];
    cout << "Harga Barang ke-" << i+1 << "  : ";
    cin >> harga[i];
    cout << endl;
  }
  
  system("clear");
 

  cout << "Data Barang:\n";
  for(i=0;i<n;i++)
  {
    cout<< i+1 << ". Barang: "<< nama[i] <<", rating: " << rating[i] << ", harga: " << harga[i]<< endl;
  }
  //pilihan sortir
  cout << "\nDisortir Berdasarkan\n";
  cout << "(1) rating || (2) harga" << endl;
  cout << "Silahkan Pilih ";
  cin >> pil;
  switch(pil)

  {
  //berdasarkan kategori rating
  case 1:

    for(i=0;i<n-1;i++)
    {
      min = rating[i];
      awal = i;
      for(j=i+1;j<n;j++)
      {
        if(min>rating[j])
        {
          min = rating[j];
          awal = j;
        }
      }
      temp = rating[i];
      rating[i] = rating[awal];
      rating[awal] = temp;
    }

    cout<<"\nData Barang yang Telah Diurutkan:\n";

    sort(rating, rating+n, greater<int>()); //sorting descending
    for(i=0;i<n;i++)
    {
        cout<< i+1 << ". Barang: "<< nama[i] <<", rating: " << rating[i] << ", harga: " << harga[i]<< endl;
    }
    break;
    system("clear");
    break;

    //berdasarkan kategori harga
    case 2:

    for(i=0;i<n-1;i++)
    {
      min = harga[i];
      awal = i;
      for(j=i+1;j<n;j++)
      {
        if(min>harga[j])
        {
          min = harga[j];
          awal = j;
        }
      }
      temp = harga[i];
      harga[i] = harga[awal];
      harga[awal] = temp;
    }
    system("clear");
    cout<<"\nData Barang yang Telah Diurutkan:\n";

    sort(harga, harga+n, greater<int>()); //sorting descending (paling besar ka paling kecil)
    for(i=0;i<n;i++)
    {
      cout<< i+1 << ". Barang: "<< nama[i] <<", rating: " << rating[i] << ", harga: " << harga[i]<< endl;
    }
    break;
    system("clear");
    break;
  }
}
