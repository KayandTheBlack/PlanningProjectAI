#include <iostream>
#include <string>
#include <vector>
using namespace std;

int version, cities, hotels, flights, mincities;

vector<string> vcities;
vector< vector<string> > vhotels;

void start ();
void objects ();
void init ();
void goal ();



int main(int argc, char** argv)
{
    if (argc < 2) {
      cout << "USAGE: " << argv[0] << " <version 0..4>" << endl;
      return 0;
    }
    version = atoi(argv[1]);
    cerr << "<numberOfCities>: ";
    cin >> cities;
    vcities = vector<string>(cities);
    cerr << "<numberOfHotelsByCity>: ";
    cin >> hotels;
    vhotels = vector<vector<string> >(cities,vector<string>(hotels));
    cerr << "<numberOfFlights>: ";
    cin >> flights;
    cerr << "<numberOfCitiesToVisit>: ";
    cin >> mincities;
    //optional extra version params;
    start();
    
    
    //cout << version << endl;
    /*cout << "You have entered " << argc
         << " arguments:" << "\n";
 
    for (int i = 0; i < argc; ++i)
        cout << argv[i] << "\n";
    string a = argv[0];
    cout << "TEST: " << a << endl;*/
    return 0;
}

void start () {
    cout << "(define (problem autogen)" << endl;
    cout << "  (:domain worldsEndAndBeyond)" << endl;
    cout << endl;
    objects();
    cout << endl;
    init();
    cout << endl;
    goal();
    //metrics!
    cout << endl;
    cout << ")" << endl;
}

string gensynIncr(string g) {
  int i=g.length(); bool overflow = true;
  while(overflow) {
    i--;
    if(i<0) {
      g = "A" + g;
      overflow = false;
    } else {
      g[i]++;
      if(g[i]>'Z') g[i] = 'A';
      else overflow = false;
    }
  }
  return g;
}

void objects() {
  cout << "  (:objects" << endl;
  cout << "    ";
  string gensyn = "A";
  for(int i=0; i<cities; i++) {
    vcities[i] = gensyn;
    cout << "city"+vcities[i] << " ";
    gensyn = gensynIncr(gensyn);
  }
  cout << "- city" << endl;
  
  cout << "    ";
  for(int i=0; i<cities; i++) {
    gensyn = "A";
    for (int j=0; j<hotels; j++) {
        vhotels[i][j] = vcities[i] + "_"+ gensyn;
        cout << "hotel" + vhotels[i][j] << " ";
        gensyn = gensynIncr(gensyn);
    }
  }
  cout << "- hotel" << endl;
  //should be all
  cout << "  )" << endl;
}



void init (){}
void goal (){}


