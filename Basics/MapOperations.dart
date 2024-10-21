void main() {
 //Program demonstrating map operations 
  //Initializing map with values
  Map<String,String> countryCapitals = {'italy':'Rome','germany':'Berlin','russia':'Moscow','france':'Paris','uk':'London'};
  //Accessing values using keys
  print("Capital of Germany : ${countryCapitals['germany']}");
  //Explicitly add an element to the map
  countryCapitals['Colombia '] = 'Bogotá';
  print("Updated Map is : $countryCapitals"); 
  //Get the number of key-value pairs in the map
  var totalKeyValues = countryCapitals.length;
  print("Number of key-value pairs in the map : $totalKeyValues");
  //chaeck map empty or not
  if(countryCapitals.isNotEmpty){
    print("Map countryCapitals has $totalKeyValues key-value pairs");
  }else{
    print("Empty map");
  }
  //check if the given key exists or not
  if(countryCapitals.containsKey('france')){
    print("Key exists and its values is ${countryCapitals['france']}");
  } 
  //print runtime type of the map
  var mapType = countryCapitals.runtimeType;
  print("Runtime type of map is : $mapType"); 
  //remove a key-value pair from map
  countryCapitals.remove('uk');
  print("Key value pair uk:London removed");
  print("Updated list is : $countryCapitals");    
}
