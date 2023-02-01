public class SetDemo {
    public static void citySet(){

        Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('BERLIN');
        cities.add('NAIROBI');
        cities.add('New York');

        System.debug('citites are ==>' + cities);

    }

    public static void randomInteger(){
        Set<Integer> intSEt = new Set<Integer>();
            intSEt.add(15); // index 0
            intSEt.add(14); // index 1
            intSEt.add(22); // index 2
            intSEt.add(65); // index 3
            intSEt.add(15); // index 4
            intSEt.add(15);
        System.debug(intSEt); 
    }

    public static set<integer> setFromList(list<integer> listInt) {

        Set<Integer> returnSet = new Set<Integer>();
        returnSet.addAll(listInt);
        return returnSet;
        
    }

    public static set<string> upperCaseSet(set<string> setString) {
        Set<String> capsSet = new Set<string>();
        for (string eachStr : setString) {
            String tempStr = eachStr.toUpperCase();
            capsSet.add(tempStr);
           
        }
        return capsSet;
    }
}

