var choiceGr = new GlideRecord('sys_choice');
choiceGr.addQuery('inactive=false^name=x_appri_court_ops_ticket^element=error_type');
choiceGr.query();
var itemGr = new GlideRecord('u_choice_reference_definition_item');
while(choiceGr.next()){
if(!itemGr.get('u_display_name',choiceGr.getValue('label'))){
itemGr.newRecord();


itemGr.setValue('u_value',choiceGr.getValue('value'));
itemGr.setValue('u_display_name',choiceGr.getValue('label'));
itemGr.setValue('u_active',true);
itemGr.insert()

}

}