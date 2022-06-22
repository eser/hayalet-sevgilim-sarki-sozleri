#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>
using namespace std;


int main(){
    string each_row;
    ifstream myfile ("../js/index.json", std::ifstream::binary);
    while(myfile >> each_row){
        each_row.erase(std::remove(each_row.begin(), each_row.end(), '"'), each_row.end());
        // each_row.erase(std::remove(each_row.begin(), each_row.end(), ','), each_row.end());
        each_row.erase(std::remove(each_row.begin(), each_row.end(), ']'), each_row.end());
        each_row.erase(std::remove(each_row.begin(), each_row.end(), '['), each_row.end());

        if (each_row == ","){
            cout << endl;
            continue;
        }
        cout << each_row << " ";
        if (each_row.find(',') != std::string::npos){
            cout << endl;
        }
        else if (each_row.size() == 1){
            continue;
        }
        
        
    }
}