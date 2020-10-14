/**
 * Created by Luca on 13/10/2020.
 */

public with sharing class StringArrayTest {

    Account acct = new Account(Name='Acme');

    public static List<String> generateStringArray(Integer nStrings){
        List<String> listStrings = new List<String>();
        for (Integer n=0;n<nStrings;n++){
            listStrings.add('Test '+n);
        }
        return listStrings;
    }
}