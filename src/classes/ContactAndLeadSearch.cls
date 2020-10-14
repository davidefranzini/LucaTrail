/**
 * Created by Luca on 14/10/2020.
 */

public with sharing class ContactAndLeadSearch {

    public static List<List<SObject>> searchContactsAndLeads(String inputField){
        List<List<SObject>> myList = [FIND :inputField IN ALL FIELDS RETURNING Contact (Name), Lead (Name,Status,City)];

        for (List<SObject> a : myList){
            for (SObject so : a){
                if (so.getSObjectType().getDescribe().getName() == 'Contact'){
                    Contact c = (Contact)so;
                    System.debug(c.Name);
                }
                if (so.getSObjectType().getDescribe().getName() == 'Lead'){

                    System.debug(((Lead)so).Name + ' '+((Lead)so).Status);
                }
                //System.debug(Schema.getGlobalDescribe().get(so).getDescribe());
            }
        }
        return myList;
    }
}