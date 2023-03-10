Map<String, EmailDomain__mdt> emails = EmailDomain__mdt.getAll();
System.debug(emails);

EmailDomain__mdt gmail = EmailDomain__mdt.getInstance('Gmail');
System.debug('gmail -->' +gmail);

// custom metadata types --> custom object 

// custom metadata types records (data) is ALSO Metadada 
