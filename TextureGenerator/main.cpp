#include <iostream>
#include <fstream>
#include <iomanip>
#include "lodepng.h"

using namespace std;

int main(int argc, char *argv[]) {

    const char* filename = argc > 1 ? argv[1] : "test.png";

    std::vector<unsigned char> image;
    unsigned width, height;

    unsigned error = lodepng::decode(image, width, height, filename);

    if(error)
    {
        std::cout << "decoder error " << error << ": " << lodepng_error_text(error) << std::endl;
        return 1;
    }

    ofstream ofile ("texture.dat", ios::out);

    if (!ofile.is_open())
    {
        return 2;
    }

    for (unsigned uiVectorCounter=0; uiVectorCounter<image.size(); uiVectorCounter = uiVectorCounter + 4)
    {
        if((uiVectorCounter % 4) != 3)
        ofile << std::hex << (image.at(uiVectorCounter) >> 4);
        ofile << std::hex << (image.at(uiVectorCounter+1) >> 4);
        ofile << std::hex << (image.at(uiVectorCounter+2) >> 4) << endl;
    }

    cout << "Hello world!" << endl;
    cin.ignore();
    return 0;

}
