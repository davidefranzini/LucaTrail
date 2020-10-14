/**
 * Created by Luca on 06/10/2020.
 */

({
    setColumn : function(component, event){
          component.set('v.columns', [
                      {label: 'Account Id', fieldName: 'Id', type: 'text'},
                      {label: 'Account Name', fieldName: 'Name', type: 'text'}]);
    },

    getAccounts : function(component, event){
        var action = component.get("c.getAccOs");
        action.setCallback(this,function (response) {
        	var state = response.getState();
        	if(state == 'SUCCESS'){
        		var result = response.getReturnValue();
                console.log('Success: ',response.getReturnValue());
                component.set('v.listAcc',response.getReturnValue());
        	}else{
        		console.log(state,response.getReturnValue());
        	}
        });
        $A.enqueueAction(action);
    }
});