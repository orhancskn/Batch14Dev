RankHandler rs = new RankHandler();
String r1 = rs.rankPrizeSwith(1);
System.debug( 'r1 is => ' + r1);
string r3 = rs.rankPrizeSwith(2);
system.debug('r3 is => ' + r3);
string r5 = rs.rankPrizeSwith(-7);
system.debug('r5 is => ' + r5);
string r11 = rs.rankPrizeSwith(22);
system.debug('r11 is => ' + r11);


RankHandler rh = new RankHandler();
String p1 = rh.rankPrize(2);
System.debug( 'p1 is => ' + p1);
string p3 = rh.rankPrize(3);
system.debug('p3 is => ' + p3);
string p5 = rh.rankPrize(0);
system.debug('p5 is => ' + p5);
string p11 = rh.rankPrize(11);
system.debug('p11 is => ' + p11);
