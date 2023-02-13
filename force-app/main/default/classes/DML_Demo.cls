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
public static void dmlDemoInsert_cstmObj2() {
    Salesforce_Project__c sp = [select id from Salesforce_Project__c order by createddate desc limit 1];
    //create ticket instance
    Salesforce_Ticket__c newST = new Salesforce_Ticket__c();
    newST.Subject__c = 'create related record via apex';
    newST.Priority__c = 'High';
    newST.Status__c = 'New';
    newST.Requested_by_date__c = date.today();
    //set relationship id
    newST.Salesforce_Project__c = sp.Id;
    //insert it now
    insert newST;
 }
 public static void dmlDemoMultipleInsert_right1() {
    List<Account> listAccount = new List<Account>();
    Account acc1 = new Account();
    acc1.name = 'Domatesciler ';
    acc1.AnnualRevenue = 234000;
    acc1.Active__c ='No';
    listAccount.add(acc1);

    Account acc2 = new Account();
    acc2.name = 'KArpuzcular ';
    acc2.AnnualRevenue = 1234000;
    acc2.Active__c ='Yes';
    listAccount.add(acc2);

    Account acc3 = new Account();
    acc3.name = 'Hiyarlar ';
    acc3.AnnualRevenue = 987000;
    acc3.Active__c ='No';
    listAccount.add(acc3);

    insert listAccount;


 }

 public static void dmlDemoMultipleInsert_Right2() {
    List<Account> insertAccountList = new List<Account>();
    for (Integer i = 0; i < 155; i +=5 ) {
        account a = new Account();
        a.Name = 'Sosft Innovas v'+i;
        a.Phone = '6743834'+i;
        a.AccountNumber = 'SI'+i;
        a.Active__c ='yes';
        insertAccountList.add(a);
    }
    //check if list empty
    if (!insertAccountList.isEmpty() ) {
        insert insertAccountList;
    }
    }
public static void dmlDemoMultipleUpdate_Right1() {
    List<Account> listAccount = [select id, name from Account
                                    ORDER BY CreatedDate desc limit 20 ];
    for (account eachAcc : listAccount) {
        eachAcc.Name += 'B.0';
    }
    update listAccount;
}
public static void dmlDemoMultipleUpdate_Right2() {
    List<Account> listAccount = [select id, name, Active__c from Account];
    list<Account> updateAccountList = new List<Account>();

    for (account eachAcc : listAccount) {
        if (eachAcc.Active__c=='Yes') {
            eachAcc.Name += 'Yy';
            updateAccountList.add(eachAcc);    
        } else if (eachAcc.Active__c==null ) {
            eachAcc.Name += 'Nn';
            updateAccountList.add(eachAcc);            
        }
       
    }
    if (!updateAccountList.isEmpty()) {
        update updateAccountList;  
    }
    
}

}
