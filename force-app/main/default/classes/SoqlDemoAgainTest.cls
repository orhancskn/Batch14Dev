@isTest 
public  class SoqlDemoAgainTest {
    @TestSetup
    static void makeData(){
        // 1 prepear data; 3 account
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
   @isTest 
   public static void testChildToParent_SOQL1() {
    
   List<Account> allAccs = [select id FROM Account];
    //300 contact created 
   Contact [] listCon = new List<Contact>();
   for (Integer i = 0; i < 300; i++) {
    contact c = new Contact();
    c.LastName = 'TestStartTes' +i;
    if (i<100) {
        c.AccountId = allAccs[0].id;
    } else if (i<200) {
        c.AccountId= allAccs[1].id;
    } else {
        c.AccountId = allAccs[2].id;
    }
    insert listCon;
   }


    test.startTest();
    SoqlDemoAgain.childToParent_SOQL1();
    test.stopTest();
    // no assertion required beacuse our MEthod Do Not do anyting. 


   }
   @isTest 
   public static void testParentotChild_soql1() {
    List<Account> allAccs = [select id, type FROM Account];
    for (Account eachAcc : allAccs) {
        eachAcc.Type = 'Customer - direct';
    }
        update allAccs; 

        List<Opportunity> listOpp = new list<Opportunity>();
        
        for (Integer i = 0; i < 300; i++) {  
            Opportunity o = new Opportunity();
            o.StageName = 'Closed won';
            o.Name = 'test opp';
            o.CloseDate = date.today();
        
            if (i<100) {
                o.AccountId = allAccs[0].id;
            } else if (i<200) {
                o.AccountId= allAccs[1].id;
            } else {
                o.AccountId = allAccs[2].id;
            }   
            insert listOpp;
        }
        SoqlDemoAgain.parentToChild_SOQL1();
    }
}

