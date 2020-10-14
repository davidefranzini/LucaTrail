/**
 * Created by Luca on 08/10/2020.
 */

public with sharing class AccountTriggerHandler {

    public static void CreateAccounts(List<Account> accs){
        List<Account> checkAccs = new List<Account>();
        for (Account a : accs){
            a.ShippingState = a.BillingState;
            checkAccs.add(a);
        }
/*        if (checkAccs.size()>0){
            insert checkAccs;
        }*/
    }
}