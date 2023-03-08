public  class SFProjectHandler {
    public static void createDefaultSFTicket(List<Salesforce_Project__c> spTriggerNew) {
        try {
            List<Salesforce_Ticket__c> newST = new List<Salesforce_Ticket__c>();
            for (Salesforce_Project__c eachSFP : spTriggerNew) {
                Salesforce_Ticket__c    st = new Salesforce_Ticket__c();
                st.Subject__c = 'Default Ticket';
                st.Salesforce_Project__c = eachSFP.Id;
                newST.add(st);
            }
            if (!newST.isEmpty()) {
                insert newST;
            } 
        } catch (Exception ex) {
            //we will not catch the ERRORS here. 
           // String errormessage = system.label.SFProjectTicket;
            for (Salesforce_Project__c eachSFP : spTriggerNew) {
                eachSFP.addError(system.label.SFProjectTicket);
            }
        }
        
    }
    public static void validateStatusCompletion(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c>spTriggerold, Map<Id,Salesforce_Project__c> spTriggerNewMap,Map<Id,Salesforce_Project__c> spTriggerOldMap ) {
        set<id> spIds = new set<id>();
        //get all sp ids where status is changed to completed.
        for (Salesforce_Project__c eachSP : spTriggerNew) {
            //check if status is changed.
            //and new status is completed
            if (eachSP.status__c != spTriggerOldMap.get(eachSP.id).status__c
                && eachSP.status__c == 'Completed') {
                    spIds.add(eachSP.Id);
            }
        }

        if (!spIds.isEmpty()) {
            //get the list of tickets which are NOT completed for spIds.
            List<Salesforce_Ticket__c> listST = [select id, status__c, salesforce_project__c from Salesforce_Ticket__c
                                                    where Salesforce_Project__c in :spIds and status__c != 'Completed'];
            for (Salesforce_Ticket__c eachST : listST) {
                //throw error in project
                Id projectId = eachST.Salesforce_Project__c;
                //get new salesforceproject.
                salesforce_project__c newProject = spTriggerNewMap.get(projectId);
                newProject.status__c.addError('Cannot complete project because all tickets are NOT completed.');
            }
        }


    }
    @future 
    public static void updateProjectDescription(set<id> spIds) {
        List<Salesforce_Project__c> listSP = [select id, description__C FROM Salesforce_Project__c WHERE id IN : spIds ];
        for (Salesforce_Project__c  eachSP  : listSP) {
            eachSP.Description__c = 'updated from future';
        }
        update listSP;
    }
    //METHOD A(new, old, newmap, oldmap)
    //we will get IDs of all project where status is changed to completed.
    //call METHOD B
    public static void projectStatusChange(list<salesforce_project__c> spTriggerNew,
        list<salesforce_project__c> spTriggerOld,
        Map<id, salesforce_project__c> spTriggerNewMap,
        Map<id, salesforce_project__c> spTriggerOldMap) {
        
            set<id> projectIds = new set<id>();
            for (Salesforce_Project__c eachSP : spTriggerNew) {
                if (eachSP.status__c == 'Completed' && eachSP.Status__c != spTriggerOldMap.get(eachSP.Id).Status__c ) {
                    projectIds.add(eachSP.Id);
                }
            }
            if (!projectIds.isempty()) {
                //call future method.
                updateTicketStatus(projectIds);
            }
    }
    @testVisible
    @future
     //METHOD B(set projectids ) (future method)
   //we can't pass here new, old, newmap, oldmap -> 
    private static void updateTicketStatus(set<id> spIds) {
        //get all tickets
        List<Salesforce_Ticket__c> listST = [select id, status__c, Salesforce_Project__c from Salesforce_Ticket__c
            Where Salesforce_Project__c in :spIds and status__c !='Completed'];
        for (Salesforce_Ticket__c st : listST) {
            st.Status__c = 'Completed';
        }
        update listST;
    }

   

}