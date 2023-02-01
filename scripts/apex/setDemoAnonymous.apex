 Set<String> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Lisbon');
        cities.add('Tokyo');
        cities.add('BERlin');
        cities.add('NAIROBI');
        cities.add('New York');

        Set<String> capitalCities = SetDemo.upperCaseSet(cities);
        system.debug(capitalCities); 




list <integer> l1 = new List<integer>();
    l1.add(10);
    l1.add(11);
    l1.add(13);
    l1.add(13);
    l1.add(11);
    l1.add(10);

    
Set<integer> s1 = SetDemo.setFromList(l1);
system.debug(l1);
System.debug(s1);



SetDemo.citySet();
SetDemo.randomInteger();

