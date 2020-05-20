#include <iostream>
#include <fstream>
#include <string.h>
#include <stdio.h>
#include <windows.h>

#include "TypeDef.h"
#include "Decoder.h"
#include "Assembler.h"

using namespace std;

Decoder decoder;
Assembler assembly(decoder.asToken);

void textcolor (int color)
{
    static int __BACKGROUND;

    HANDLE h = GetStdHandle ( STD_OUTPUT_HANDLE );
    CONSOLE_SCREEN_BUFFER_INFO csbiInfo;

    GetConsoleScreenBufferInfo(h, &csbiInfo);

    SetConsoleTextAttribute (GetStdHandle (STD_OUTPUT_HANDLE),
                             color + (__BACKGROUND << 4));
}

COORD GetConsoleCursorPosition(HANDLE hConsoleOutput)
{
    CONSOLE_SCREEN_BUFFER_INFO cbsi;
    if (GetConsoleScreenBufferInfo(hConsoleOutput, &cbsi))
    {
        return cbsi.dwCursorPosition;
    }
    else
    {
        // The function failed. Call GetLastError() for details.
        COORD invalid = { 0, 0 };
        return invalid;
    }
}

int main(int argc, char** argv)
{
    COORD kordy;
    HANDLE hConsole  = GetStdHandle(STD_OUTPUT_HANDLE);

    textcolor(0x0D);
    cout << "Podziekowania dla ekipy dzentelemenow za wsparcie psychiczne!\n\n";
    if (argc != 2)
    {
        textcolor(0x0C);
        cout <<  "Typie, cos tu brakuje pliku wejsciowego\nPrzyklad uzycia: \"kompilator.exe cyfra.asm\"";
        cout <<  "\n\nNacisnij enter, aby zakonczyc";
        cin.ignore(1);
        return 1;
    }

    string line;
    char cLine[32];
    uint16_t opcode;
    char op[2];
    uint16_t lineCounter = 0;
    ifstream ifile (argv[1]);
    ofstream ofile ("output.bin", ios::out | ios::binary);

    if (!ifile.is_open())
    {
        textcolor(0x0C);
        cout << "Nie da sie otworzyc pliku :<\nOn wgl istnieje?\n\nNacisnij enter..." << endl;
        cin.ignore(1);
        return 2;
    }

    if(!ofile.is_open()) {
        textcolor(0x0C);
        cout << "Nie da sie utworzyc pliku :<\n\nNacisnij enter..." << endl;
        cin.ignore(1);
        return 3;
    }

    while ( getline (ifile,line) )
    {
        strcpy(cLine, line.c_str());
        textcolor(0x0B);
        cout << cLine << '\t';
        if(decoder.DecodeMsg(cLine) == ERRR)
        {
            textcolor(0x0C);
            cout << "\n\nKolego, cos masz blad w kodzie. Linijka: " << lineCounter+1 << "\n\nNacisnij enter..." << endl;
            cin.ignore(1);
            return 4;
        }
        opcode = assembly.assemble();
        kordy = GetConsoleCursorPosition(hConsole );
        kordy.X = 20;
        SetConsoleCursorPosition(hConsole, kordy);
        textcolor(0x0A);
        cout << "0x" << std::hex << opcode << '\n';
        op[0] = opcode >> 8;
        op[1] = opcode & 0xFF;
        ofile.write(op, 2);
        lineCounter++;
    }
    ifile.close();
    ofile.close();

    textcolor(0x0D);
    cout << "\n\nNo i gitara, milej cyfry XD\nProgram napisany przez D.Chat\n\nNacisnij enter...";
    cin.ignore(1);
    return 0;
}
