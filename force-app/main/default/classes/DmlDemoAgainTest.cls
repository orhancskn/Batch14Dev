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
}