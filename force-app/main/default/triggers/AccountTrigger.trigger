trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
    system.debug('----- trigger start -----');
    Map<id, account> trgNewMap = trigger.newMap;
    Map<id, account> trgOldMap = trigger.oldMap;

    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('====BEFORE INSERT====');
        system.debug('trigger.newMap -> ' + trgNewMap);//ID is null. So newMap is NULL.
        system.debug('trigger.oldMap -> ' + trgOldMap);//Old is null. So oldMap is also NULL, obviously.
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('====AFTER INSERT====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgOldMap);//Old is null. So oldMap is also NULL, obviously.
    }

    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('====BEFORE UPDATE====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgOldMap);//yes
    }
    if (Trigger.isAfter && Trigger.isUPDATE) {
        system.debug('====AFTER UPDATE====');
        system.debug('trigger.newMap -> ' + trgNewMap);//yes
        system.debug('trigger.oldMap -> ' + trgOldMap);//yes
    }


}

//     System.debug('_______TRIGGER START________');
//     // system.debug('Trigger.isBefore -> ' + Trigger.isBefore);
//     // system.debug('Trigger.isAfter -> ' + Trigger.isAfter);

//     // system.debug('Trigger.isInsert -> ' + Trigger.isInsert);
//     // system.debug('Trigger.isUpdate -> ' + Trigger.isUpdate);
//     if(Trigger.isAfter && Trigger.isInsert){
//         system.debug('after insert trigger called.'+ trigger.new);
//     }

//     if(Trigger.isBefore && Trigger.isInsert){
//         system.debug('before insert trigger called.'+ trigger.new);
//     }
//     if(Trigger.isAfter && trigger.isUpdate){
//         system.debug('after update trigger OLD called.'+ trigger.old);
//     }

//     if(Trigger.isBefore && Trigger.isUpdate){
//         system.debug('before update trigger OLD called.'+ trigger.old);
//     System.debug('_______TRIGGER END________');
// }
// }

//         // system.debug('Trigger.isBefore --> ' + Trigger.isBefore);
//         // system.debug('Trigger.isAfter --> ' + Trigger.isAfter);
//         // if(Trigger.isBefore){
//         //     system.debug('before insert trigger called.');
//         // }
//         // if(Trigger.isAfter){
//         //     system.debug('after insert trigger called.');
//         // }

//     //     system.debug('trigger isinsert==>' + Trigger.isInsert);
//     // if (Trigger.isInsert) {
//     //     system.debug('before insert trigger called.');
//     // }
//     // system.debug('trigger isUpdate==>' + Trigger.isUpdate);
//     // if (trigger.isUpdate) {
//     //      system.debug('before update trigger called.');
//     // }
