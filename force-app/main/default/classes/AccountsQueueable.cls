public class AccountsQueueable implements Queueable {
    List<Account> listAccount = new List<Account>();
    public AccountsQueueable(List<Account> accs) {
        listAccount = accs;
    }

    public void execute(QueueableContext qc){
        System.debug('inside execute method listaccount --> '+ listAccount);
        //update name of all account in listaccoutn 
        //append --SI in accoutn name 
        for (Account eachAcc : listAccount) {
            eachAcc.name +=  eachAcc +'--SI';
        }
        update listAccount;
    }
}