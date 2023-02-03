public class CalculatorSt {
    //Return Sum of 2 integer 
    //Accept two integers 
    public static integer add(integer a, integer b) {
        return a+b;
    }
    public static integer add(integer a, integer b, integer c, integer d) {
        return a+b+c+d;
    }

    public static integer add(list<integer> intList) {
        integer sum =0;
        System.debug(intList);
        for (integer eachInt : intList) {
        sum += eachInt;   
        }
        system.debug(sum);
        return sum;
        
    }
}