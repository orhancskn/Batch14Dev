try {
    Account a = new Account();
    insert a;  
} catch (DmlException dmlx ){
    System.debug('Something WRONG BLAME ADMIN');
}catch (Exception ex) {
    System.debug('Something WRONG BLAME ADMIN Buddy');

} 
System.debug('Apex is SIMPLE');


