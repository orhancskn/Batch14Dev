public class CollectionClass {
    public static String listAssign(integer inpusas){
    
         List<String> LstMonth = new List<String>{
            'January', 'February', 'March', 'April', 'May', 'June',
            'July', 'August', 'September', 'October', 'November', 'December' 
        };
        string output_Month = '';
       if (inpusas >0 && inpusas <LstMonth.size()) {
        output_Month = LstMonth[inpusas-1];
       } else {
        output_Month = ' Not a valid Month';
       }
       return output_Month;

        
    }
}