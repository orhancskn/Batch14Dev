@isTest 
public  class AccountTriggerTest {
@isTest 
private static void testAcoountInsert() {
    Account acc= new Account();
    acc.Name = 'test 1'; 
    acc.Industry = 'Energy';
    Account acc2= new Account();
    acc2.Name = 'test 2'; 
    acc2.Industry = 'Energy';
    Account acc3= new Account();
    acc3.Name = 'test 3'; 
    acc3.Industry = 'Banking';
        list<Account> listAcc= new List<Account>{acc, acc2, acc3};
        insert listAcc;
    }
    // in first method process builder makes an updated trigger dakiupdatede de saglanmis oluyor. ama olmasaydi boyle test edecektik. 
    @isTest 
    private static void testAccountUpdate() {
        Account acc= new Account();
    acc.Name = 'test 1'; 
    acc.Industry = 'Energy';
    Account acc2= new Account();
    acc2.Name = 'test 2'; 
    acc2.Industry = 'Energy';
    Account acc3= new Account();
    acc3.Name = 'test 3'; 
    acc3.Industry = 'Banking';
        list<Account> listAcc= new List<Account>{acc, acc2, acc3};
        insert listAcc;
        for (Account eachAcc : listAcc) {
            eachAcc.Description = 'Test this update';
        }
        update listAcc;
    }
    
@isTest 
public static void testVipUpdate() {
    Account acc= new Account();
    acc.Name = 'test 1'; 
    acc.Industry = 'Energy';
    Account acc2= new Account();
    acc2.Name = 'test 2'; 
    acc2.Industry = 'Energy';
    Account acc3= new Account();
    acc3.Name = 'test 3'; 
    acc3.Industry = 'Banking';
        list<Account> listAcc= new List<Account>{acc, acc2, acc3};
        insert listAcc;
        // create contacts for these account  
        List<contact> listCon = new list<contact>();
        for (Integer i = 0; i < 300; i++) {

            contact c = new contact();
            c.LastName = 'anything ' + i;

            if (i < 100) {
                c.accountId = listAcc[0].id;
            } else if(i < 200){
                c.AccountId = listAcc[1].id;
            } else {
                c.AccountId = listAcc[2].id;
            }
            listCon.add(c);
        }
        insert listCon;

        //update account's vip field
            //** this will fire trigger > handler > vipUPdate method
            //** update all accounts contact's VIP field
        for (account eachAccount : listAcc) {
            eachAccount.vip__c = true;
        }
        update listAcc;
        
        //assert that vip is updated in all contacts
        list<contact> allContacts = [select id, accountid, vip__c from Contact];
        for (contact eachContact : allContacts) {
            assert.areEqual(true, eachContact.vip__c);
        }
}

}