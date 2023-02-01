public class ConditionClass_Assignment {
     
    public string ifClassMethod(integer value) {
        
        String output_Month = 'Not a valid Month';
        if (value == 1) {
            output_Month = 'January'; 
        } else if (value ==2) {
            output_Month = 'February';
        } else { 
                    
        }
        return output_Month;

    }
    public String CaseMethod(String month){
        string output_Quarter = 'Enter a proper Month name';
        switch on month {
            when 'January', 'February', 'March' {
                output_Quarter = 'Quarter 1';
            }
            when 'April', 'May', 'June' {
                output_Quarter = 'Quarter 2';
            }
            when 'July', 'August', 'September' {
                output_Quarter = 'Quarter 3';
            }
            when 'October', 'November', 'December' {
                output_Quarter = 'Quarter 4';
            }
            when else {
                output_Quarter = 'Please Enter a proper Month name!!!'; 
        }
       
    }  return output_Quarter;
}
}



/* */