DML_Demo.dmlDemoInsert_stndObj1();
DML_Demo.dmlDemoInsert_cstmObj();
DML_Demo.dmlUpdateDemo_stndObj1();
DML_Demo.dmlUpdateDemo_stndObj2();
DML_Demo.dmlInsertDemo_stndObj2();
DML_Demo.dmlDemoInsert_cstmObj2();
DML_Demo.dmlDemoMultipleInsert_right1();
DML_Demo.dmlDemoMultipleInsert_Right2();
DML_Demo.dmlDemoMultipleUpdate_Right1();
DML_Demo.dmlDemoMultipleUpdate_Right2();

List<Account> delAccount =[select id from account where createddate = today limit 25  ];
delete delAccount;
delete [select id from account where createddate = today limit 5 ];




