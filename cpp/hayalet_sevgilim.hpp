/*
    İrem - Hayalet Sevgilim Sözleri C++ Header Dosyası

*/
#ifndef HAYALET_SEVGILIM_HPP
#define HAYALET_SEVGILIM_HPP

#include <iostream>
#include <string>
#include <fstream>
#include <algorithm>

using namespace std;

class hayalet_sevgilim
{
private:
    string sozler_dosya_adi;
    ifstream *dosya = new ifstream;

public:
    // Sözlerin olduğu dosyayı açıyor.
    hayalet_sevgilim()
    {
        sozler_dosya_adi = "../C/sozler.windows.1254.txt";
        dosya->open(sozler_dosya_adi, ifstream::binary);
    }
    // Şarkının tüm sözlerini yazdıran fonksiyon.
    void printLyrics()
    {
        string satir;
        while (getline(*dosya, satir))
        {
            cout << satir.erase(satir.size() - 1) << "\n";
        }
    }
    // Şarkı sözleri içerisinden rastgele bir satırı yazdıran fonksiyon.
    void printRandomLine()
    {
        srand(time(0));
        string satir;
        int rastgele = rand() % 57;
        for (int i = 0; i < rastgele; i++)
        {
            getline(*dosya, satir);
            satir = satir.erase(satir.size() - 1);
        }
        cout << satir;
    }

    // İstenilen satırı string tipinde dönen fonksiyon.
    string getLine(int satirSayi)
    {
        if (satirSayi > 57 && satirSayi < 0)
        {
            return "Böyle bir satır yok!";
        }
        
        string satir;
        for (int i = 0; i < satirSayi; i++)
        {
            getline(*dosya, satir);
            satir = satir.erase(satir.size() - 1);
        }
        return satir;
    }

    // RAM'de kullanılan alnaları boşaltıyor.
    ~hayalet_sevgilim()
    {
        dosya->close();
        delete dosya;
    }
};

#endif /* HAYALET_SEVGILIM */
