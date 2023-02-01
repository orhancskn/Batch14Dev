public class RankHandler {
    public String rankPrize(Integer rank) {
        String prize = '';
        if (rank== 1) {
            prize = 'Gold';
            
        } else if (rank  == 2) {
            prize = 'Silver';
        } else if (rank == 3) {
            prize = ' Bronze';
        }        
        else {
           if (rank <=10) {
            prize = ' Top 10 Certificate';
           }  else {
            prize = 'Thanks for Participation ';
        }
        } 
        return prize;
    }
   public String rankPrizeSwith(Integer rank){
        String prize = '';
        switch on rank {
            when   1 {
                prize = 'Gold';
            }
            when   2 {
                prize = 'Silver';
            } 
            when   3 {
                prize = 'Bronz';
            }
            when   4,5,6,7,8,9,10 {
                prize = 'Top 10 Certificate';
            }
            when else {
                if (rank<=0) {
                    prize = 'Bad budddy';
                } else {
                 prize = 'Thanks for Participation ';  
                }
                 
            }
        }
        return prize;
   } 
}