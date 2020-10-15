/**
 * Created by Luca on 08/10/2020.
 */

public with sharing class AccountHandler {

    public void CreateNewOpportunity(List<Account> accts){
        List<Opportunity> opps = new List<Opportunity>();
        for (Account a : accts) {
            Opportunity opp = new Opportunity();
            opp.Name = a.Name + ' Opportunity';
            opp.AccountId = a.Id;
            opp.StageName = 'Prospecting';
            opp.CloseDate = System.Today().addMonths(1);
            opps.add(opp);
        }
        if (opps.size()>0) {
            insert opps;
        }
    }

    public static Account insertNewAccount(String InputName){
        Account account = new Account(Name=InputName);
        try{
            insert account;
            System.debug('Object insert successfully');
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' + e.getMessage());
        }
        if (InputName.equals('')){
            return null;
        }
        return account;
    }

    public void methodProva(){
       System.debug('Ciao');
    }

    public static void miMettoinMezzo(){
        system.debug('niente');
    }

    public void methodProvaSecondo(){
       System.debug('CiaoDue');
    }
}