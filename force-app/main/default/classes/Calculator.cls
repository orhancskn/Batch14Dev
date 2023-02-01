
    public class Calculator {
        public void welcomeMessage(){
            system.debug('welcome to apex calc,  update');
        }
    
        //default access modifier ==> private
        //private -> is accessible only inside the class. NOT OUTSIDE.
        public void printNewMessage(string msg){
            system.debug(msg);
            //this is how we can call other method of same class.
            welcomeMessage();
        }
    
        //return type = string
        //parameter type = string (only 1)
        public string printAndReturnMessage(string m){
            string returnStr = '';
            system.debug('message is ' + m);
            returnStr = m + '...OK Cool';
            return returnStr;
        }
        public Integer add (Integer a, Integer b){
            Integer sum = a+ b;
            return sum;
        
        }
        public Integer add (Integer a, Integer b, integer c ){
            Integer sum = a+ b + c ;
            return sum;
        
        }

        public Integer add (String a, String b ){
            Integer sum = a.length() + b.length() ;
            return sum;
        
        }
        public Boolean leapYearCheck( date dt){
            Integer year = dt.year();
            Boolean lp = date.isLeapYear(year);
            return lp;
        }

    }