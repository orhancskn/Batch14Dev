public class PrimitiveDataTypeDemo {
    // creating a method 
    public void printBasicDataType(){
        // this is method body
        String batchName = 'Batch 14';
        Integer totalCandidates = 42;
        Boolean isAdminCompleted = true;

        system.debug('total candidates ==> ' + totalCandidates);

        String batchDescription = batchName + ' has spidermans';
        system.debug(batchDescription);
        
        Decimal dec =25.25;
        System.debug('decimal values is ' + dec);

        Long longValue = 4584465897L;
        System.debug('long value is ' + longValue); 

        Object obj1 = 'this is a string object';
        Object obj2 = 1141;
        Object obj3 = false;
        System.debug(obj1 + ' '+ obj2 + ' kere '+ obj3);
        Id recordID = '0014w00003hAFwUAAW';
        System.debug('record id  =' +recordId);

    }

}

