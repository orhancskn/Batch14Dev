AccountsBatch ab = new AccountsBatch();
Database.executeBatch(ab, 20);
//database.executeBatch(ab); default number of record 200

List<Account> sizea= new List<Account>();
sizea = [Select id From account];
system.debug('accout number ' + sizea.size());