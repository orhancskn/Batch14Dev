@isTest 
public class SFprojectHandlerTEst {
    @isTEst 
    public static void testFutureMethod() {
        // prepare Data
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'test project';
        sp.Description__c = 'futuretest';
        sp.Status__c ='New';

        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'test project';
        sp2.Description__c = 'futuretest';
        sp2.Status__c ='New';
        Salesforce_Project__c [] listSP = new list<Salesforce_Project__c>{sp, sp2};
        insert listSP;
        
        Set<Id> spIDs = new Set<Id>{sp.id, sp2.id};

        Test.startTest();
        SFProjectHandler.updateProjectDescription(spIds);
        Test.stopTest();

        //assert
        Salesforce_Project__c[] allSP = [SELECT id, description__c FROM Salesforce_Project__c ];
        for (Salesforce_Project__c s : allSP) {
            assert.isTrue(s.Description__c.contains('future') );
        }


    }
}