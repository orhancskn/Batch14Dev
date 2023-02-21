public  class SFProjectHandler {
    public static void createDefaultSFTicket(List<Salesforce_Project__c> spTriggerNew) {
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
    }
}