trigger AccountTrigger on Account (before insert, before update, after insert, after update) {
   system.debug('_____TRIER START_______');

   if (trigger.isBefore) {
   AccountTriggerHandler.UpdateDescription(trigger.new, Trigger.old, trigger.newMap, Trigger.oldMap);
    }

    // if (Trigger.isAfter && Trigger.isUpdate) {
    //     set<Id> setIds = trgNewMap.keySet();

    //     for (Id eachID  : setIds) {
    //         //get NEW Account from eachID (key)
    //         //.get method of map to get account record
    //         Account newAcc = trgNewMap.get(eachId); 
    //         Account oldAcc = trgOldMap.get(eachId); 

    //         string newName = newAcc.Name;
    //         string oldName = oldAcc.Name;

    //         system.debug('new account name is ' + newName +', old account name WAS ' + oldName);
    //         //system.debug('new account name is v2 ' + trigger.newMap.get(eachId).Name);
    //     }
    //     }
    }

    // if (Trigger.isBefore && Trigger.isInsert) {
    //     system.debug('====BEFORE INSERT====');
    //     system.debug('trigger.newMap -> ' + trgNewMap);//ID is null. So newMap is NULL.
    //     system.debug('trigger.oldMap -> ' + trgOldMap);//Old is null. So oldMap is also NULL, obviously.
    // }
    // if (Trigger.isAfter && Trigger.isInsert) {
    //     system.debug('====AFTER INSERT====');
    //     system.debug('trigger.newMap -> ' + trgNewMap);//yes
    //     system.debug('trigger.oldMap -> ' + trgOldMap);//Old is null. So oldMap is also NULL, obviously.
    // }

    // if (Trigger.isBefore && Trigger.isUpdate) {
    //     system.debug('====BEFORE UPDATE====');
    //     system.debug('trigger.newMap -> ' + trgNewMap);//yes
    //     system.debug('trigger.oldMap -> ' + trgOldMap);//yes
    // }
    // if (Trigger.isAfter && Trigger.isUPDATE) {
    //     system.debug('====AFTER UPDATE====');
    //     system.debug('trigger.newMap -> ' + trgNewMap);//yes
    //     system.debug('trigger.oldMap -> ' + trgOldMap);//yes
    // }




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
