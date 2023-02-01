public class AdditionCalc {
    public static integer num1;
    public static integer num2;
    public AdditionCalc(integer x, integer y){
        num1 = x;
        num2 = y;
    } 


    public static integer additionOfTwo() {
        integer result = num1 +num2;
        system.debug(result);
        return result;
        

    }
}