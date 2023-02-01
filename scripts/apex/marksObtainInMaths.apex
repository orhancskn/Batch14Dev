Map<String,Integer> marksObtainInMaths = new Map<String,Integer>();
marksObtainInMaths.put('0111CE112', 40);
marksObtainInMaths.put('0111CE102', 19);
marksObtainInMaths.put('0111CE100', 33);
marksObtainInMaths.put('0111CE098', 40);
//Add multiple mappings of your choice in the marksObtainInMaths Map.
marksObtainInMaths.put('0111CE103', 50);
marksObtainInMaths.put('0111CE104', 01);
//Print all the Student Roll Number present in the marksObtainInMaths. 
System.debug(marksObtainInMaths); 
//Print all the Student Roll Number present in the marksObtainInMaths. 
System.debug(marksObtainInMaths.keySet());
//Print all the Marks Obtain present in the marksObtainInMaths.
System.debug(marksObtainInMaths.values());
// Create a set as uniqueRollNumberSet and populate it with all the Roll number from marksObtainInMaths.
Set<String> rollNumberSet = new Set<String>(marksObtainInMaths.keySet());
system.debug(rollNumberSet);
//Create a List as marksObtainList and populate it with all the marks obtain from marksObtainInMaths
list<Integer> marksObtainList = new List<Integer>(marksObtainInMaths.values());
System.debug(marksObtainList); 


// Create a set as uniqueRollNumberSet
Set<String> uniqueRollNumberSet = new Set<String>();
uniqueRollNumberSet.addAll(marksObtainInMaths.keySet());

// Create a List as marksObtainList

for (String key : uniqueRollNumberSet) {
  marksObtainList.add(marksObtainInMaths.get(key));
}

// Optional
for (String key : uniqueRollNumberSet) {
  if (marksObtainInMaths.get(key) < 20) {
    System.debug(key + ' is not qualified for next class');
  }
}








// Set<Integer> uniqueRollNumberSet = new Set<integer>();
// for(Integer eachKey : marksObtainInMaths){
//    Integer tempValue = marksObtainInMaths(eachKey);
//     uniqueRollNumberSet.add(value);
// }
// system.debug(uniqueRollNumberSet);


