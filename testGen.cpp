#include <iostream>
#include <string>
#include <vector>
using namespace std;

int version, cities, hotels, flights, mincities;

int minDaysinCity, maxDaysinCity, totalDays; //e1

vector<string> vcities;
vector< vector<string> > vhotels;
vector< vector<bool> > vflights;

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
    cerr << "<numberOfFlights(outdegreebycity, < cities)>: ";
    cin >> flights;
    vflights = vector<vector<bool> >(cities,vector<bool>(cities,false));
    cerr << "<numberOfCitiesToVisit>: ";
    cin >> mincities;
    //optional extra version params;
    if(version > 0) {
      cerr << "<minDaysinCity>: ";
      cin >> minDaysinCity;
      cerr << "<maxDaysinCity>: ";
      cin >> maxDaysinCity;
      cerr << "<minTotalDays>: ";
      cin >> totalDays;
    }
    start();
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
  cout << "    Origin ";
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

void printHotelAts();
void printFlights();
void printFunctionInitialisations();

void init () {
  cout << "  (:init" << endl;
  
  cout << "    (currentLocation Origin)" << endl;
  cout << endl;
  
  printHotelAts();
  cout << endl;
  
  printFlights();
  cout << endl;
  
  printFunctionInitialisations();
  cout << endl;
  
  cout << "  )" << endl;
}

void goal () {
  cout << "  (:goal" << endl;
  if(version == 0)
    cout << "    (>= (citiesVisited) " << mincities << ")" << endl;
  else if(version == 1){
    cout << "    (and" << endl;
    cout << "      (>= (citiesVisited) " << mincities << ")" << endl;
    cout << "      (>= (totalDays) " << totalDays << ")" << endl;
    cout << "    )" << endl;
  }
  
  
  
  cout << "  )" << endl;
}











void printHotelAts(){
  for (int i=0; i<vhotels.size(); i++){
    for(int j=0; j<vhotels[i].size(); j++) {
      cout << "    (hotelAt " << "hotel" + vhotels[i][j] << " " << "city"+vcities[i] << ")" << endl;
    }
  }
}
void printFlights() {
  srand((unsigned)time(0)); 
  for (int i=0; i<vcities.size(); i++) {
    cout << "    (flight Origin " << "city"+vcities[i] << ")" << endl;
  }
  for (int i=0; i<vcities.size(); i++) {
    int x = 0;
    int r;
    while(x < flights) {
      r = (rand()%cities); 
      if(vflights[i][r] or r==i) x--;
      else vflights[i][r] = true;
      x++;
    }
  }
  for (int i=0; i<vflights.size(); i++) {
    for (int j=0; j<vflights[i].size(); j++) {
      if(vflights[i][j])
        cout << "    (flight " << "city"+vcities[i] << " " << "city"+vcities[j] << ")" << endl;
  }  }
  
  
}
void printFunctionInitialisations() {
  
  cout << "    (= (citiesVisited) 0)" << endl;
  //e1 initialisations:
  if(version > 0) {
    cout << "    (= (totalDays) 0)" << endl;
    cout << "    (= (minDaysInCity) " << minDaysinCity << ")" << endl;
    cout << "    (= (maxDaysInCity) " << maxDaysinCity << ")" << endl;
    cout << endl;
    cout << "    (= (stayDuration Origin) 0)" << endl;
    for(int i=0; i<vcities.size(); i++)
      cout << "    (= (stayDuration " << "city"+vcities[i] << ") 0)" << endl;
  }
}

