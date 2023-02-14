trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    System.debug('_______TRIGGER START________');
    system.debug('Trigger.isBefore -> ' + Trigger.isBefore);
    system.debug('Trigger.isAfter -> ' + Trigger.isAfter);

    system.debug('Trigger.isInsert -> ' + Trigger.isInsert);
    system.debug('Trigger.isUpdate -> ' + Trigger.isUpdate);
    if(Trigger.isAfter && Trigger.isInsert){
        system.debug('after insert trigger called.');
    }

    if(Trigger.isBefore && Trigger.isInsert){
        system.debug('before insert trigger called.');
    }
    if(Trigger.isAfter && trigger.isUpdate){
        system.debug('after update trigger called.');
    }

    if(Trigger.isBefore && Trigger.isUpdate){
        system.debug('before update trigger called.');
    System.debug('_______TRIGGER END________');
}
}

        // system.debug('Trigger.isBefore --> ' + Trigger.isBefore);
        // system.debug('Trigger.isAfter --> ' + Trigger.isAfter);
        // if(Trigger.isBefore){
        //     system.debug('before insert trigger called.');
        // }
        // if(Trigger.isAfter){
        //     system.debug('after insert trigger called.');
        // }

    //     system.debug('trigger isinsert==>' + Trigger.isInsert);
    // if (Trigger.isInsert) {
    //     system.debug('before insert trigger called.');
    // }
    // system.debug('trigger isUpdate==>' + Trigger.isUpdate);
    // if (trigger.isUpdate) {
    //      system.debug('before update trigger called.');
    // }
