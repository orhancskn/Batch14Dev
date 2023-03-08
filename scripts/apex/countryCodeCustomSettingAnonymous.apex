Map<String, country_code__c > countryCodes = Country_Code__c.getAll();
System.debug('country cose ' + countryCodes);

/// print -> country is united states its code is usa 

for (string eachName : countryCodes.keySet()) {
Country_Code__c eachRecord = countryCodes.get(eachName);
system.debug(' country is ' + eachName + ' code is ' + eachRecord.code__c);    


}