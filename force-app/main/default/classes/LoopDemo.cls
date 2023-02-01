public class LoopDemo {
    public void print_int_while() {
        Integer count = 1;
        while (count <=25) {
            System.debug(count);
            count++;
            
            
        }
    }
    public void print_N_Numbers (Integer n){
        //  for  inititalize    condition    increment 
        for (Integer i = 0; i < n; i+=10) {
            //print i
            System.debug(i);
        
        }

    }
    public void print_N_oddNumbers(Integer startInt, Integer endInt){
        for (Integer i = startInt; i < endInt; i++) {
            Integer remainderI = math.mod(i, 2);
            if (remainderI == 1) {
                System.debug(i);
            }
        }
    }
}