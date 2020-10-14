/**
 * Created by Luca on 06/10/2020.
 */

public class HelloWorldCtr {

    @AuraEnabled
    public static list<Account> getAccOs(){
        return [SELECT id, Name FROM Account limit 20];
    }
}