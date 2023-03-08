@isTest 
public  class ContactTriggerHandlerTest {
   @isTest 
   private static void TestValidation2() {
    Contact c = new Contact();
    c.LastName ='Tosun';
    c.LeadSource = 'Web';
    insert c;

    // update lead source
    try {
        c.LeadSource ='phone';
    update c;
    } catch (Exception ex) {
        system.debug('ex message ' + ex.getMessage());
//assert
        assert.isTrue(ex.getMessage().containsIgnoreCase('FIELD_CUSTOM_VALIDATION_EXCEPTION'));

    }
    
  

   }
}