public class AccountsBatch implements database.batchable<SObject>, Database.stateful {
   
   integer recordCount=0;
    public  Database.QueryLocator start(database.BatchableContext bc){
    Database.QueryLocator db =Database.getQueryLocator([Select id, active__c, description FROM Account ]);
    return db;
   }

   public void execute(Database.BatchableContext bc, List<Account> scope ){
    System.debug('inside execute method');
    system.debug('Record Count :START ==> ' + recordCount);
    System.debug('number of record to process is ' + scope.size());
    List<Account> updateAccount = new List<Account>();
    for (Account eachAcc : scope) {
        if(eachAcc.Active__c !='No'){
            eachAcc.Description += 'Updated via Batch';
            updateAccount.add(eachAcc);
        }
     }
        if(!updateAccount.isEmpty()){
            recordCount += updateAccount.size();
            update updateAccount;
            system.debug('Record Count AFTER UPDATE ==> ' + recordCount);
        }

       
    
   }
   public void finish(Database.BatchableContext bc ){
    system.debug('finisded method called. all records proceesed ');
    system.debug('Record Count Final ==> ' + recordCount);
   }

}