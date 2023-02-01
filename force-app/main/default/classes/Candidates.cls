public class Candidates {
    public string name;
    public string gender;
    public static Integer countCandidates =0;  
    public static string companyName;

    public void printCandidate(){
        System.debug('------***------');
        System.debug('candidate name is '+ name + ' , gender is ' + gender);
        system.debug('company name is '+ companyName); 
        System.debug('------***------');
    }

}