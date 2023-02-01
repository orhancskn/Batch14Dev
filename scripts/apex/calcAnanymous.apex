ConditionClass_Assignment m2 = new ConditionClass_Assignment();
System.debug(m2.CaseMethod('February'));

Calculator d = new Calculator();
Boolean resutl =  d.leapYearCheck(date.today());
System.debug(resutl ); 

Calculator a = new Calculator();
Integer sum1 =a.add(12, 18, 6);

Integer x =22;
Integer y = 37;
integer sum = a.add(x, y);
//Integer sum1 =a.add(44, 63);
System.debug(sum + ' =sum and sum1 = '+ sum1);

Calculator c = new Calculator();
//c.printAndReturnMessage('print this for batch 14');//this will work. we are NOT storing in any variable.
string result = c.printAndReturnMessage('print this for batch 14');//this will also work. We ARE storing in one variable.
system.debug(result);


Calculator w = new Calculator();
w.welcomeMessage();

Calculator w1 = new Calculator();
String msg ='mahmut tucer';
w1.printNewMessage(msg);
w1.printNewMessage('999');