@isTest
public  class AccountTriggerHandlerTest {
    @isTest 
    private static void testUpdateDescription1() {
        // insert data 
        Account acc= new Account();
        acc.Name = 'test 1'; 
        acc.Industry = 'Energy';
        acc.Active__c ='Yes';
        Account acc2= new Account();
        acc2.Name = 'test 2'; 
        acc2.Industry = 'Energy';
        acc2.Active__c ='Yes';
        Account acc3= new Account();
        acc3.Name = 'test 3'; 
        acc3.Industry = 'Banking';
        acc3.Active__c ='No';
        list<Account> listAcc= new List<Account>{acc, acc2, acc3};
        insert listAcc;
      //  assertion or verificitaion via soql 

        List<Account> allAccounts =[Select id, description, active__c from Account];
        for (Account eachAcc : allAccounts) {
          if (eachAcc.Active__c =='Yes') {
             // we want to asster that descritoin has 'boolean flag' word inside 

         assert.isTrue(eachAcc.Description.contains('boolean'));           
        } 
          else {
            system.debug('eachAcc.Description ' + eachAcc.Description);
            // check  desc is null 
            assert.isTrue(eachAcc.Description == null);
            }
            

        }
}

   
    @isTest 
    private static void testUpdateDescription2() {
         // insert data 
         Account acc= new Account();
         acc.Name = 'test 1'; 
         acc.Industry = 'Energy';
         Account acc2= new Account();
         acc2.Name = 'test 2'; 
         acc2.Industry = 'Energy';
         Account acc3= new Account();
         acc3.Name = 'test 3'; 
         acc3.Industry = 'Banking';
         acc3.Active__c ='No';
         list<Account> listAcc= new List<Account>{acc, acc2, acc3};
         insert listAcc;
         for (Account a : listAcc) {
            a.Active__c ='Yes';
         }
         //assertion or verificitaion via soql 
 
         List<Account> allAccounts =[Select id, description, active__c from Account];
         for (Account eachAcc : allAccounts) {
           if (eachAcc.Active__c =='Yes') {
              // we want to asster that descritoin has 'boolean flag' word inside 
              assert.isTrue(eachAcc.Description.contains('boolean'));
           } 
           
 
     }
    }
}