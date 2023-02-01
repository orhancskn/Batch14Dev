public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthDate = date.newInstance(1981, 07, 19);
        Date todayDate = date.today();
        Integer ageInMongths = birthDate.monthsBetween(todayDate);
        System.debug('Life is ' + ageInMongths);
     
        Integer ageInDays = birthDate.daysBetween(todayDate);
        System.debug('Life is ' + ageInDays + ' DAYS');
    }
    PUBLIC VOID printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();
        date subscriptionEnd = subscriptionStartDate.addDays(1000);
        System.debug('Subscripton ends in ' + subscriptionEnd);

        integer subscriptionEndYear = subscriptionEnd.year();
        Integer subscriptionEndMonth = subscriptionEnd.month();
        System.debug('Subscripton ends in ' + subscriptionEndYear +' & '+subscriptionEndMonth);

        Datetime offerStart = Datetime.now();
        Datetime offerEnd = offerStart.addHours(24);
        System.debug('offer ends in ' + offerEnd);

        date offerEndDate = offerEnd.date();
        System.debug('offfer end in the date of ' + offerEndDate);
        


     }
     public void birthDateinMS(){
        Datetime orhan = Datetime.newInstance(1981, 07, 19);
        Long orhan2 = orhan.getTime();
        system.debug(orhan2);

     }

    
}