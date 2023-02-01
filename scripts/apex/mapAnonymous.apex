Map<String,String> mapCountryCurrency = new Map<String,String>();
mapCountryCurrency.put('USA', 'Dolar');
mapCountryCurrency.put('France', 'Euro');
mapCountryCurrency.put('Poland', 'Euro');
mapCountryCurrency.put('India', 'Rupee');
mapCountryCurrency.put('India', 'Rupees');
mapCountryCurrency.put('Turk', 'Lira');
mapCountryCurrency.put('El Salvador', 'BTC');
System.debug('map of country and currency ==>' + mapCountryCurrency);

String indiaCurrency = mapCountryCurrency.get('India');
system.debug(indiaCurrency);

Set<String> countrySet =mapCountryCurrency.keySet();

system.debug('countires ' + countrySet);

List<String> currencyList = mapCountryCurrency.values(); 
system.debug('currencies ' + currencyList);

Set<String> countries = mapCountryCurrency.keySet();

for (string eachKey : countrySet) {
    String printString = 'country is ' + eachKey;

    String eachValue = mapCountryCurrency.get(eachKey);
    printString += ', currecy is ' + eachValue;
    System.debug(printString);

}
Integer m=7; 
String m1 = MapDemo.retriveMonth(m);
System.debug(m+ '. month is ==>' + m1);


Integer mx=13; 
String m2 = MapDemo.retriveMonth(mx);
System.debug(mx+ '. month is ==>' + m2);

