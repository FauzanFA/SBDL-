#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
 
using namespace std;
 
//Deklarasi struct
struct data_nasabah
{
    char namaLengkap[50];
   char alamatRumah[100];
   int kode;
   int status;
   char noHP [13];
};
 
//Deklarasi variabel struct
data_nasabah nab;
 
int main()
{    
    //Input struct data nasabah
    cout<<" Data Nasabah\n";
    cout<<"-----------------------\n";
    cout<<" MASUKAN NAMA        : "; cin>>nab.namaLengkap;
    cout<<" Masukan Alamat Rumah: "; cin>>nab.alamatRumah;
    cout<<" Kode Pos            : "; cin>>nab.kode;
    cout<<" Status              : "; cin>>nab.status;
    cout<<" No HP               : "; cin>>nab.noHP;
  
 
    //Output struct data nasabah
    cout<<"\n\n\n Data Nasabah\n";
    cout<<"-----------------------\n";
    cout<<" MASUKAN NAMA        : "<<nab.namaLengkap<<endl;
    cout<<" Masukan Alamat Rumah: "<<nab.alamatRumah<<endl;
    cout<<" Kode Pos            : "<<nab.kode<<endl;
    cout<<" Status              : " <<nab.status<<endl;
    cout<<" No HP               : " <<nab.noHP<<endl;
   
    getch();
}
