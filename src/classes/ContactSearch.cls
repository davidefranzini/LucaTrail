/**
 * Created by Luca on 14/10/2020.
 */

public with sharing class ContactSearch {

    public static List<Contact> searchForContacts (String lastName, String mailingPostalCode){
        List<Contact> contList = [SELECT Id, Name FROM Contact WHERE LastName=:lastName AND MailingPostalCode=:mailingPostalCode];
        return contList;
    }

    public static void provaDebug (String lastName, String mailingPostalCode){
        for(Contact a : searchForContacts(lastName, mailingPostalCode)){
            System.debug(a.Id + ' ' + a.Name);
        }
    }
}