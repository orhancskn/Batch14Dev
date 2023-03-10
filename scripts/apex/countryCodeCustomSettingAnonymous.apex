Map<String, country_code__c > countryCodes = Country_Code__c.getAll();
System.debug('country code ' + countryCodes);

/// print -> country is united states its code is usa 

for (string eachName : countryCodes.keySet()) {
Country_Code__c eachRecord = countryCodes.get(eachName);
system.debug(' country is ' + eachName + ' code is ' + eachRecord.code__c);    


}

Country_Code__c cdTurkey = Country_Code__c.getInstance('Turkiye');
system.debug(cdTurkey);
System.debug(' cc Turkey '+ cdTurkey.Code__c);
