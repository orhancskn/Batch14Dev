public class SoqlDemo {
    public static void accountSOQL_1() {
        List<Account> listAcc = [SELECT Id, Name, Phone  FROM Account  ORDER BY CreatedDate desc];
        system.debug(listAcc);

    }
    public static void accountSOQL_2() {
    Account acc = [SELECT Id, Name, Phone  FROM Account  ORDER BY CreatedDate desc limit 1];
        system.debug('last cr. account acc is ==>' + acc);

    }

    public static void accountSOQL_3() {
        Account acc = [SELECT Id, Name, Phone, AccountNumber  FROM Account  ORDER BY CreatedDate desc limit 1];
        system.debug('account acc is ==>' + acc);
        String aName = acc.Name;
        String aPhone = acc.Phone;
        System.debug('last created account name and phone is == >' + aName + '==> '+ aPhone+ ' account number is ==> '+ acc.AccountNumber);  
    }
    public static void accountSOQL_4() {
        List<Account> listAccount = [SELECT Id, Name, Phone, AccountNumber  FROM Account  ORDER BY CreatedDate ];
        //system.debug(listAccount);
        for (account eachAccount : listAccount) {
            System.debug('LOOP Starts Here');
            String accName = eachAccount.Name;
            String accPhone= eachAccount.Phone;
            System.debug('last created account name and phone is == >' + accName + '==> '+ accPhone+ ' account number is ==> '+ eachAccount.AccountNumber);  
            System.debug('LOOP Ends Here');
        }
    }
    public static void accountFilter_SOQL() {
        String accountNameFilter ='sfdc llc';
        List<Account> listAcc = [select id, name, Phone FROM Account WHERE Name = :accountNameFilter ];
        System.debug('list acc ==>' + listAcc);
    }
    public static void accountFilter_SOQL(String accountNameFilter) {
        
        List<Account> listAcc = [select id, name, Phone FROM Account WHERE Name = :accountNameFilter ];
        System.debug('list acc ==>' + listAcc);
        
    }
    public static void childToParent_SOQL1() {
        list<contact> listContact = [select id, name, phone, account.name, account.industry from contact where account.industry = 'energy'];
        for (contact eachContact : listContact) {
            string accName = eachContact.account.name;
            system.debug('contact name is ' + eachContact.Name + ', its account is ' + accName);
        }
    }
    public static void parentToChild_Soql1() {
        List<Account> accountWithOppList = [select name, annualrevenue, (select name, amount from opportunities where stagename = 'Closed won') from account where type = 'Customer - direct'];
        for (account eachAcc  : accountWithOppList) {
            System.debug('accunt ==> '+ eachAcc + 'account annual revenue ==>' +eachAcc.AnnualRevenue );
            List<Opportunity> eachAccOpp = eachAcc.Opportunities;
            System.debug('------______----');
            for (opportunity eachOpp : eachAccOpp) {
                 System.debug('Opp ==> '+eachOpp.Name +  ' amount ==> ' + eachOpp.Amount );

                
            }
            System.debug('________--________');
            
        }
        
    }
  //projects, and its tickets.
    //2 req
        //1. total tickets for each PROJECT.
        //2. high priority ticket for each PROJECT.
        public static void parentToChild_SOQL2() {
            list<salesforce_project__c> listSP = [select name, project_name__c, 
                        (select subject__c, priority__c from salesforce_tickets__r) 
                        from salesforce_project__c];
            //for each loop on project
            for (salesforce_project__c eachSP : listSP) {
                //1. total tickets.
                List<salesforce_ticket__c> listST = eachSP.salesforce_tickets__r;
                integer totalTickets = listST.size();
                integer highPriorityST = 0;
                //check each ticket's priority field. if it is 'high' then increment
                for (salesforce_ticket__c eachST : listST) {
                    //check if priority == 'High'
                    if (eachST.priority__c == 'High') {
                        highPriorityST++;
                    }
                }
                system.debug('Project name ' + eachSP.name + ', total tickets ' + totalTickets + ' high priority tickets are ' + highPriorityST);
    
            }
        }

}