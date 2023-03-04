trigger SalesforceProjectTrigger on Salesforce_Project__c   (before insert, after  insert, before update, after update) {
    if (Trigger.isAfter && Trigger.isInsert) {
        //call handler method
        SFProjectHandler.createDefaultSFTicket(Trigger.new);
        SFProjectHandler.updateProjectDescription(Trigger.newMap.keySet());
    }
    if (trigger.isBefore && Trigger.isUpdate) {
        //valide status complete method
      //  SFProjectHandler.validateStatusCompletion(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
      
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        SFProjectHandler.projectStatusChange(Trigger.new, Trigger.old, Trigger.newMap, Trigger.oldMap);
    }

}