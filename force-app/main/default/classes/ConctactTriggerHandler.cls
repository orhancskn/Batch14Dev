public class ConctactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> conTriggerNew, List<contact> conTriggerOld,
    Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
        for (contact eachContact : conTriggernew) {
            //get oldContact using oldMap
            contact oldContact = conTriggerOldMap.get(eachContact.id);

            if (oldContact.leadsource == 'Partner Referral') {
                //addError to validate (or throw error)
                eachContact.addError('Cannot update Partner Referral contact.');
            }
        }
    }
    public static void contactUpdateValidation2(List<contact> conTriggerNew, List<contact> conTriggerOld, Map<id, contact> conTriggerNewMap, Map<id, contact> conTriggerOldMap) {
        for (Contact eachContact : conTriggerNew) {
            if (eachContact.LeadSource != conTriggerOldMap.get(eachContact.id).LeadSource) {
                eachContact.LeadSource.addError('Cannot Update Lead Source... ');
            }
        }
    }
}