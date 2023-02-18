public class AccountTriggerHandler {
   public static void UpdateDescription(List<Account> accTriggerNew, List<Account>accTriggerOld, Map<Id,Account>AccTriggerNewMap, Map<Id,Account> AccTriggerOldMap ) {
    for (Account eachAcc : accTriggerNew) {
        if (trigger.isInsert && eachAcc.Active__c == 'Yes') {
            eachAcc.Description = 'Account is Active NOW!!';
        }
        if (trigger.isUpdate) {
            String newActive = eachAcc.Active__c;
            Account oldAcc = AccTriggerOldMap.get(eachAcc.Id);
            if (newActive  != oldAcc.Active__c && newActive == 'Yes') {
                eachAcc.Description =' Enjoy Enjoy';
            }
            
        }
    }
   }
}
   
   
   