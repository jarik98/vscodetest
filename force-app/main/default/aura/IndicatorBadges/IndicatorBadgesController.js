({
    doInit : function(component, event, helper) {
      var sObj = component.get("v.sObjectName");
      console.log(sObj);
      if(sObj){
        helper.getLabelForRecord(component, sObj);
      }
    },
    dosome:function(){},
    
    //future code here
  })
