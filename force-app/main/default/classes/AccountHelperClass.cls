public  class AccountHelperClass {
    @invocableMethod
   public static void updateAccountWebsite(List<Id> accIds) {
        List<Account> listAccount = [SELECT Id, website FROM Account WHERE Id IN : accIds];
        for (Account eachAccount : listAccount) {
            eachAccount.Website ='www.softinnovas.com';
        }
        update listAccount;
   }
}