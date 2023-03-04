@isTest 
public class AccountsQueueableTest {
    public testMethod static void testQueueable1(){
        list<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'batch test ' + i;
            a.Description = 'test';
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;

//enqueue job 
        Test.startTest();
       // same thing AccountsQueueable qa = new AccountsQueueable(listAcc);
        System.enqueueJob(new AccountsQueueable(listAcc));
        Test.stopTest();

        //assertion
        integer countSI = [Select COUNT() FROM Account WHERE name LIKE '%--SI' ];
        assert.areEqual(900, countSI);
        
    }
}