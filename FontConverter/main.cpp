#include <iostream>
#include <fstream>
#include <iomanip>
#include "font32x32.h"

using namespace std;

unsigned short int shortest[960];
unsigned short int shortestT[960];

//y[x] - bitowo

unsigned char getPixel(unsigned int x, unsigned int y, unsigned int znak)
{
    unsigned int adrr = (znak*15)+x;
    if ((shortest[adrr] & (1<<(15-y)))!=0)
        return 1;
    else
        return 0;
}

int main()
{
    for (unsigned int uiCounter = 0; uiCounter < 960; uiCounter++)
    {
        shortest[uiCounter] = (Topaz32x32[(uiCounter*2)] << 8);
        shortest[uiCounter] += (Topaz32x32[(uiCounter*2)+1]);
    }

    ofstream ofile ("font.dat", ios::out);

    if (!ofile.is_open())
    {
        return 1;
    }

    for (unsigned int uiCounter = 0; uiCounter < 960; uiCounter++)
    {
        ofile << std::hex << setw(4) << setfill('0') << shortest[uiCounter] << endl;
    }

    ofile.close();
    cout << "Hello world! " <<  sizeof(Topaz32x32) << endl;
    return 0;
}
