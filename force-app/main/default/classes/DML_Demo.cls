public  class DML_Demo {
    
    public static void dmlDemoInsert_stndObj1() {
    // create a new instance sObject 
        Account acc = new Account();
        //set field values
        acc.Name ='SoftInnovas';
        //final
        insert acc;

    }
    public static void dmlDemoInsert_cstmObj() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c =' Learn DML';
        sp.Description__c ='Do Traildhead DML';
        sp.Status__c = 'New';

        insert sp;

    }
    public static void dmlUpdateDemo_stndObj1() {
        Account ac = new Account();
        ac.Name ='Salesforce 2';
        System.debug('ac before insert ' + ac);
        insert ac;
        System.debug('ac after insert '+ ac);
        //Update ac 
        ac.Name= 'Sales Force 2  Inc';
        update ac;
    }
    public static void dmlUpdateDemo_stndObj2() {
        Account acc = [select id, name from account where name like 'Softinnovas%' limit 1];
        // now set new field value
        acc.Name = 'Softinnovas LLC';
        acc.Phone= '2345678';
        update acc;
        System.debug('acc is ==>'+acc);

        
    }
 
    public static void dmlInsertDemo_stndObj2() {
        Account acc = [select id, name from account where name like 'Softinnovas%' limit 1];
        // create contact instance
        Contact cnt = new Contact();
        cnt.LastName ='Biden';
        //setting relationshipt
        cnt.AccountId = acc.id;
        insert cnt;


}
}
