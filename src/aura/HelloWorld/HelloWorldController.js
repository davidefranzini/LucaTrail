/**
 * Created by Cinzia on 06/10/2020.
 */

({
    doInit : function(component, event, helper)
    {
        //var val = component.find("myInput").getElement().value;
        //component.set("v.greeting", val);
        //alert('Hello World!');
        helper.setColumn(component, event, helper); 
        helper.getAccounts(component, event, helper);
    }
});