//cascade notation example

void main() {
  //Conditional operator
  
   var result = 100;
   result == 100 ? print("Correct") : print("Wrong!");
  
  //Cascading notation ..
  var countryOne = {1: 'India', 2: 'America'};
  var countryTwo = {3: 'Japan'};
  var countryThree = {4: 'UK'};
  var mergedMap = {}..addAll(countryOne)..addAll(countryTwo)..addAll(countryThree);
  print('Merging maps using cascade notation: $mergedMap');
  
  //Index operator exampple 
  var str = "Flutter";
  print("Character at fifth index in string Flutter : "+str[5]);

  //for-each example
  List<String> countryNames=['India','America','Japan','UK','Spain'];
  countryNames.forEach( (names)=>print(names));
}