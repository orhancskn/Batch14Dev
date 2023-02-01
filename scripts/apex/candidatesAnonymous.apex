



Candidates.CompanyName = 'Domates';
System.debug(' start count cand =. '+ Candidates.countCandidates ); 
Candidates c1 =new Candidates ();
c1.Name ='Hasan';
c1.Gender = 'Tas firin';
c1.printCandidate();
Candidates.countCandidates++;


Candidates c2 = new Candidates();
c2.name = 'Elaine';
c2.gender = 'Female';
c2.printCandidate();
Candidates.countCandidates++;

Candidates c3 = new Candidates();
c3.name = 'George';
c3.gender = 'Male';
c3.printCandidate();
Candidates.countCandidates++;
system.debug('total candidates ==> ' + candidates.countCandidates);
