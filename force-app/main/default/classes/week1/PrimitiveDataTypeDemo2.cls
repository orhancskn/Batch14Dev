public class PrimitiveDataTypeDemo2 {
    public void printNewDate() {
        System.debug('create new dates here');

        Date newDate = date.newInstance(1995, 2 ,15 );
        System.debug('new date is ' + newDate);

        Date newDate2 = date.newInstance(2022, 1, 12);
        System.debug('new date2 is ' + newDate2);
        date todayDate = date.today();
        System.debug('today is ' + todayDate);

    }
    public void printNewTime (){
        Time myTime = time.newInstance(22, 14, 12, 99);
        System.debug(' saat ' + myTime);
    }
    public void printNewDateTime(){
        Date newDate = date.today();
        time newTime = time.newInstance(01, 15, 59, 95);
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        System.debug('dt1 ' + dt1);
        Datetime dt2 = Datetime.newInstance(2022, 5, 25);
        System.debug('dt2 is ' + dt2);
        Datetime dt3 = Datetime.newInstance(2022, 01, 14, 00, 01, 16);
        System.debug('dt3 is ' + dt3);
        long longTime  =0;
        dateTime dt4 =Datetime.newInstance(longtime);
        System.debug('dt4 '+ dt4);
        Datetime dt5 = Datetime.newInstanceGmt(2022, 2, 15, 00, 15, 20);
        System.debug('dt5 '+ dt5);
        Datetime dt6 = Datetime.now();
        System.debug('dt6 '+ dt6);
    }

}