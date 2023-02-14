trigger ContactTriger on Contact (before insert, after insert, before update, after update) {
    if (Trigger.isBefore) {
        system.debug('We`re in BEFORE Trigger');
        if (Trigger.isInsert) {
            System.debug('BEFORE INSERT Trigger');
        }
        if (trigger.isUpdate) {
            System.debug('BEFORE UPDATE Trigger');
        }
    }
    if (Trigger.isAfter) {
        system.debug('bu niye yazmadi aq'+trigger.new);
        system.debug('We`re in AFTER Trigger');
        if (Trigger.isInsert) {
            System.debug('AFTER INSERT Trigger');
        }
        if (trigger.isUpdate) {
            System.debug('AFTER UPDATE Trigger');
        }
    }

}