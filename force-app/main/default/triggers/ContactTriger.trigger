trigger ContactTriger on Contact (before insert, after insert, before update, after update) {
    List<Contact> newContacts = trigger.new;
    // if (Trigger.isBefore) {
    //     system.debug('We`re in BEFORE Trigger');
    //     if (Trigger.isInsert) {
    //         System.debug('BEFORE INSERT Trigger');
    //     }
    //     if (trigger.isUpdate) {
    //         System.debug('BEFORE UPDATE Trigger');
    //     }
    // }
    if (Trigger.isAfter) {
        system.debug('after insert/update new records : ' + newContacts);
        system.debug('number of records inserted/updated: ' + newContacts.size());

        for (Contact eachCnt : newContacts) {
            System.debug('new cont id is ' + eachCnt.Id + ' , new  contact name is ' + eachCnt.Name); 
        }
        // system.debug('bu niye yazmadi aq'+trigger.new);
        // system.debug('We`re in AFTER Trigger');
        // if (Trigger.isInsert) {
        //     System.debug('AFTER INSERT Trigger');
        // }
        // if (trigger.isUpdate) {
        //     System.debug('AFTER UPDATE Trigger');
        // }
    }

}