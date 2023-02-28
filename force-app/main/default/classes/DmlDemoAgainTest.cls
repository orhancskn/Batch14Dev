@isTest
public class DmlDemoAgainTest {
    @isTest
    public static void testInserStnObj() {
        //SOQW ==> CANNOT FETCH OR GET ANY RECORD FROM ORG
        //DML ==> WILL NOT INSER/UPDATE ANY RECORD IN ORG
        DmlDemoAgain.dmlDemoInsert_stndObj1();//call method
        //verify ==> soql
        Account[] acc = [SELECT id, name FROM Account WHERE Name = 'Softinnovas'];
        system.assertEquals(1, acc.size());
        system.assertEquals('Softinnovas', acc[0].Name);
    }
    @isTest 
    public static void testInsertCustomObj() {
        DmlDemoAgain.dmlDemoInsert_cstmObj();

        Salesforce_Project__c[] listSP = [SELECT Id, Name, project_name__c from Salesforce_Project__c];
        system.assertEquals('Learn dml', listSP[0].project_name__c); 
    }
    @isTest
    public static void testUpdateDemo_stndObj2() {
        Account acc = new Account();
        acc.name = 'Softinnovas';
        insert acc;
        //call method
        DmlDemoAgain.dmlUpdateDemo_stndObj2();
        // verify soql
        Account uptdatedAcc =[SElect id, name FROM Account ];
        //assert
        system.assertEquals('Softinnovas Inc.', uptdatedAcc.Name);
        assert.areEqual('Softinnovas Inc.', uptdatedAcc.Name);
        
    }
    @isTest 
    public static void testInsertDemo_stndObj2() {
        Account acc = new Account();
        acc.name = 'Softinnovas';
        insert acc;
        //call method
        DmlDemoAgain.dmlInsertDemo_stndObj2();
        //verify soql
        Contact c = [Select id, lastname, accountid FROM Contact WHERE LastName='Biden' ];
        assert.areEqual(acc.id, c.AccountId);  
        //or
        system.assertEquals(acc.id, c.AccountId);
    }
    @isTest 
    public static void testDemoInsert_cstmObj2() {
        //1. prepare data - create project 
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'test project';
        insert sp;
        // call method
        DmlDemoAgain.dmlDemoInsert_cstmObj2();
        // verify soql
        Salesforce_Ticket__c sst = [SELECT id, subject__C, priority__c, status__c, salesforce_project__c FROM Salesforce_Ticket__c WHERE Subject__c = 'create related record via apex' ];
        assert.areEqual(sp.id, sst.Salesforce_Project__c);
        // or 
        system.assertEquals('High', sst.priority__c);
    }
}