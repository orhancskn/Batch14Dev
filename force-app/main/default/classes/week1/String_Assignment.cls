public class String_Assignment {
    public void stringAssignMethod() {
        String localString = 'Thanks for the session on the string';
        System.debug(localString);

        Integer uzunluk = localString.length();
        System.debug('lenght of localString =' + uzunluk );

        String buyukHarf = localString.toUpperCase();
        System.debug(buyukHarf);

        Boolean checkString1 = localString.contains('session');
        Boolean checkString2 = localString.contains('sessions');
        Boolean checkString3 = localString.contains('SESSION');
        System.debug(checkString1);
        System.debug(checkString2);
        System.debug(checkString3);


    }
}