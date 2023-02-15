List<String> listStr = new list<String>();
listStr.add('out of bond');
listStr.add('yes');
listStr.add('alright ');
listStr.add('maybe');
listStr.add('😆');

String concateStr = '';

for (String eachStr: listStr){
    concateStr += ' || ' + eachStr;

}

System.debug(concateStr);
System.debug(' :smile: ');

Contact b = new Contact();
b.LastName = 'John';
insert b;

