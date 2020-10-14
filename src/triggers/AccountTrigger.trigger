/**
 * Created by Luca on 08/10/2020.
 */

trigger AccountTrigger on Account (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    if (Trigger.isBefore && Trigger.isInsert) {
        AccountTriggerHandler.CreateAccounts(Trigger.new);
    }
}