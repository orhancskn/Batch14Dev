public class Datetime_Assignment {
    public void diffofDate() {
        Date varTomorrowDate = date.newInstance(2023, 01, 20);
        Date varTodaysDate = date.newInstance(2023, 01, 19);
        Integer dateDiff = varTodaysDate.daysBetween(varTomorrowDate);
        System.debug(dateDiff);

    }
    public void timeCheck(){
        Datetime varTomorrowDateTime = Datetime.newInstance(2023, 01, 20, 07, 00, 00);
        Datetime var10DaysDatetime = Datetime.newInstance(2023, 01, 30, 09, 00, 00);
        Long varDatetimeLong = 12339874361L;
       
        Datetime varTomorrowDateTime7Days = varTomorrowDateTime.addDays(7);
        Datetime var10DaysDatetime10DaysAdded = var10DaysDatetime.addDays(10);
        System.debug('tomorrow is ' + varTomorrowDateTime + ' after 7 dasys ' + varTomorrowDateTime7Days);
        System.debug('10 Days later '+ var10DaysDatetime +'20 Days Later '+ var10DaysDatetime10DaysAdded);
        System.debug(varDatetimeLong);
    }
}