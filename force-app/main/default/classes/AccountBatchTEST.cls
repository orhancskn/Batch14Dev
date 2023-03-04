@ISTEST
public  class AccountBatchTEST {
    @istest 
    public static void testBatch1() {
        //1/ prepera data 
        list<account> listAcc = new list<account>();
        for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'batch test ' + i;
            a.Description = 'test';
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;
        //end of prepare data
        // invoxe batch apex, in betwn start test stop test
        Test.startTest();
        AccountsBatch ab = new AccountsBatch();
        Database.executeBatch(ab, 950);
        Test.stopTest();

        //3. assert 
        List<Account> allAccount = [Select id, description FROM Account ];
        for (Account eachAccount : allAccount) {
            assert.isTrue(eachAccount.Description.containsIgnoreCase('batch'));
        }
    }
}