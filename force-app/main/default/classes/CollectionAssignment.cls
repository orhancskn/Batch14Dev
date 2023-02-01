public class CollectionAssignment {
        Set<String> setOfCountries;
       
        public CollectionAssignment () {
        //Create a set<String> countriesSet to store countries 
        setOfCountries = new Set<String>();
            setOfCountries.add('India');
            setOfCountries.add('USa');
            setOfCountries.add('Russia');
            setOfCountries.add('Germany');
            setOfCountries.add('Singapore');
            setOfCountries.add('Japan');
       }
        
       //Iterate setlist and convert each string to lowercase then add to list
       public void printLowerCase() {
        Set<String> lowerCaseCountries = new Set<String>();
        for (string eachStr :setOfCountries ) {
            String tempCo = eachStr.toLowerCase();
            lowerCaseCountries.add(tempCo);
            
        }
        System.debug(lowerCaseCountries);
        
       }
       //Iterate setlist and convert each string to uppercase then add to list
       public  void printUpperCase() {
        Set<String> upperCaseCountries = new Set<String>();
        for (string eachStr : setOfCountries) {
            String tempCo = eachStr.toUpperCase();
            upperCaseCountries.add(tempCo); 

        }
        system.debug(upperCaseCountries);

       }
        
    
      
}

