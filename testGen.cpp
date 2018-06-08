#include <iostream>
#include <string>
#include <vector>
using namespace std;

int version, cities, hotels, flights, mincities;

int minDaysinCity, maxDaysinCity, totalDays; //e1
int minCost, maxCost; //e3

int baseHotelCost = 50;
int HotelDeviation = 200;
int baseFlightCost = 100;
int FlightDeviation = 100;

vector<string> vcities;
vector< vector<string> > vhotels;
vector< vector<bool> > vflights;

void start ();
void objects ();
void init ();
void goal ();
void metrics ();



int main(int argc, char** argv)
{
    srand((unsigned)time(0)); 
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
    if (version >= 3) {
      
      cerr << "<minCost>: ";
      cin >> minCost;
      cerr << "<maxCost>: ";
      cin >> maxCost;
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
    cout << endl;
    metrics();
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
  else if(version == 1 or version == 2){
    cout << "    (and" << endl;
    cout << "      (>= (citiesVisited) " << mincities << ")" << endl;
    cout << "      (>= (totalDays) " << totalDays << ")" << endl;
    cout << "    )" << endl;
  } else if (version == 3 or version == 4) {
    cout << "    (and" << endl;
    cout << "      (>= (citiesVisited) " << mincities << ")" << endl;
    cout << "      (>= (totalDays) " << totalDays << ")" << endl;
    cout << "      (>= (totalcost) " << minCost << ")" << endl;
    cout << "      (<= (totalcost) " << maxCost << ")" << endl;
    cout << "    )" << endl;
  }
  cout << "  )" << endl;
}


void metrics () {
    if (version == 2) {
      cout << "  (:metric " << endl;
      cout << "    minimize (totalInterest)" << endl;
      cout << "  )" << endl;
    }
    if (version == 3) {
      cout << "  (:metric " << endl;
      cout << "    minimize (totalcost)" << endl;
      cout << "  )" << endl;
    }
    if (version == 4) {
      cout << "  (:metric " << endl;
      cout << "    minimize" << endl;
      cout << "      (+ (* " << (baseFlightCost+FlightDeviation/2)*mincities + (baseHotelCost+HotelDeviation/2)*totalDays << " (totalInterest)) (totalcost))" << endl;
      cout << "  )" << endl;
      //we use the ponderation defined in e4Test: MeanFlightCost*citiesVisited + MeanHotelCost*totalDays
    }
}









void printHotelAts(){
  for (int i=0; i<vhotels.size(); i++){
    for(int j=0; j<vhotels[i].size(); j++) {
      cout << "    (hotelAt " << "hotel" + vhotels[i][j] << " " << "city"+vcities[i] << ")" << endl;
    }
  }
}
void printFlights() {
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
  if(version == 2 or version == 4) {
    cout << "    (= (cityInterest Origin) 0)" << endl;
    for(int i=0; i<vcities.size(); i++)
      cout << "    (= (cityInterest " << "city"+vcities[i] << ") " << rand()%3 + 1 << ")" << endl;
    cout << "    (= (totalInterest) 0)" << endl;
  }
  if(version == 3 or version == 4) {
    cout << "    (= (totalcost) 0)" << endl;
    //Hotel cost
    
    for (int i=0; i<vhotels.size(); i++) 
      for (int j=0; j<vhotels[i].size(); j++) {
        cout << "    (= (hotelcost " << "hotel" + vhotels[i][j] << ") " << baseHotelCost + rand()%HotelDeviation << ")" << endl;
      }
    cout << endl;
    //flight cost
    for (int i=0; i<vcities.size(); i++) 
        cout << "    (= (flightcost Origin " << "city"+vcities[i] << ") 0)" << endl;
    for (int i=0; i<vflights.size(); i++) {
    for (int j=0; j<vflights[i].size(); j++) {
      if(vflights[i][j]){
        cout << "    (= (flightcost " << "city"+vcities[i] << " " << "city"+vcities[j] << ") " << baseFlightCost + rand()%FlightDeviation << ")" << endl;
        }
    }  }
    
  }
}

