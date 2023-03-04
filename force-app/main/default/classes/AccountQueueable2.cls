public class AccountQueueable2 implements Queueable {
    List<Account> listAccount = new List<Account>();
    public AccountQueueable2(List<Account> accs) {
        listAccount = accs;
    }

    public void execute(QueueableContext qc){
        System.debug('inside execute method listaccount --> '+ listAccount);
        //update name of all account in listaccoutn 
        //append --SI in accoutn name 
        for (Account eachAcc : listAccount) {
            integer indexOfAcc = eachAcc.name.indexOf('Account:');

            string newname = eachAcc.name.substring(0, indexOfAcc);
            eachAcc.name =newname;
        }
        update listAccount;
    }
}