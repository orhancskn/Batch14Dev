public class AccountTriggerHandler {
    public static void updateContactVip(List<Account> accTriggerNew, List<Account> accTriggerOld, Map<Id,Account> AccTriggerNewMap, Map<Id,Account> AccTriggerOldMap ){
        //ser of accounts ids where VIP is changed
        set<Id> accIds = new set<Id>();
        for (Account eachAcc : accTriggerNew) {
        // check if VIP is changed. old vip != new vip
            if (eachAcc.VIP__c != AccTriggerOldMap.get(eachAcc.Id).vip__c) {
                accIds.add(eachAcc.Id);
            }
        }
         //get contacts for all accounts where vip is changed.
        //how how how???? SOQL. SOQL. SOQL.
        if (!accIds.isEmpty()) {
            
        
        List<Contact> listContacts = new List<Contact>();
        listContacts = [select id, vip__c, accountid from contact where accountid in :accIds];
        for (Contact eachCon : listContacts) {
               //update VIP field of eachContact same as its account's VIP field.
            //first we get here account's VIP field value
            Account newAcc = AccTriggerNewMap.get(eachCon.AccountId);
            Boolean accVip = newAcc.vip__c;
            eachCon.vip__c = accVip;
        }
        if (!listContacts.isEmpty()) {
            update listContacts;
        }
        }
    }
  
  
  
  
    public static void UpdateDescription(List<Account> accTriggerNew, List<Account> accTriggerOld, Map<Id,Account> AccTriggerNewMap, Map<Id,Account> accTriggerOldMap ) {
        // for (Account eachAccount : accTriggerNew) {
        //     boolean updateDesc = false;
        //     if(trigger.isInsert && eachAccount.active__c == 'Yes'){
        //         //update descrption field
        //         //how to update description?
        //             //set the value
        //         updateDesc = true;
        //     }
        //     if(trigger.isUpdate){
        //         //check if active field is changed from No or --None-- to Yes.
        //         //how to check if active field is changed?
        //             //old and new value is not same
                
        //         //new active field
        //         string newActive = eachAccount.Active__c;
        //         //old active field???
        //         Account oldAccount = accTriggerOldmap.get(eachAccount.Id);
        //         string oldActive = oldAccount.Active__c;
        //         if (newActive != oldActive && newActive == 'Yes') {
        //             updateDesc = true;
        //         }
        //     }
        //     if (updateDesc) {
        //         eachAccount.Description = 'Account is active now. Enjoy Enjoy Enjoy buddy!';
        //     }
        // }
    for (Account eachAcc : accTriggerNew) {
       Boolean updateDesc = false;
        if (trigger.isInsert && eachAcc.Active__c == 'Yes') {
                updateDesc = true;
            // eachAcc.Description = 'Account is Active NOW!!';
        }
        if (Trigger.isUpdate) {
            String newActive = eachAcc.Active__c;
            Account oldAcc = AccTriggerOldMap.get(eachAcc.Id);
            if (newActive  != oldAcc.Active__c && newActive == 'Yes') {
                updateDesc = true;
                // eachAcc.Description =' Enjoy Enjoy';
            }
            
            
        }
        if (updateDesc) {
            eachAcc.Description ='I updated description with a boolean flag';
            }
    }
   }
}
   
   
   