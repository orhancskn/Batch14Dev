String crn ='0 0 13 * * ?';

AccountsSchedule acs = new AccountsSchedule();
system.schedule('accountSchedule22', crn, acs) ;



List<Account> listAcc2 = [Select id, name FROM Account WHERE name like '%Account:%' ];
AccountQueueable2 aq2 = new AccountQueueable2(listAcc2);
id jobID2 = system.enqueueJob(aq2);