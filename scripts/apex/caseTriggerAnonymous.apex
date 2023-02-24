List<Case> newCases = new List<Case>();
for (Integer i = 0; i < 210; i++) {
    Case c = new Case();
    c.Subject = 'Trigger Case 2009';
    c.status = 'New';
    c.Origin = 'Web';
    c.Description = ',Resolve it now';
    newCases.add(c);
}
insert newCases;


list<case> updateCAses = [select id, status from case where status='New'];
for (case eachCase : updateCases) {
    eachCase.Status = 'Working';
}
update updateCAses;