// Filename: saveFunctionsSchemeRK3Ghost.cu
//
// Copyright (c) 2010-2015, Florencio Balboa Usabiaga
//
// This file is part of Fluam
//
// Fluam is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Fluam is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Fluam. If not, see <http://www.gnu.org/licenses/>.


bool saveFunctionsSchemeRK3Ghost(int index){
  //Initialize save functions
  cout << "INDEX " << index << endl;
  if(index==0){
    if(!saveSeed()) return 0;
    if(!saveTime(index)) return 0;
    if(!temperatureGhost(index)) return 0;
  }
  //Use save functions
  else if(index==1){
    if(!temperatureGhost(index)) return 0;
  }
  //Close save functions
  else if(index==2){
    if(!saveTime(index)) return 0;
    if(!temperatureGhost(index)) return 0;
  }
  else{
    cout << "SAVE FUNCTIONS ERROR, INDEX !=0,1,2 " << endl;
    return 0;
  }
  


  return 1;
}
