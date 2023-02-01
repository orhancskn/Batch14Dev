public class ListDemo {
    public static String candidateList(Integer i) {
        List<String> listCandidates = new List<String>();
        listCandidates.add('Marc');
        listCandidates.add('Elon');
        listCandidates.add('Bill');
        listCandidates.add('Marc');
        System.debug('candidates ==> ' + listCandidates);
        String candidate = '';

        if (i>=0 && i<listCandidates.size()) {
            candidate = listCandidates[i];

        } else {
            candidate = 'No Value Found';
        }
        return candidate;

    }
    public static void randomIntegerList() {
        
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(15); // index 0
        listInteger.add(14); // index 1
        listInteger.add(22); // index 2
        listInteger.add(65); // index 3
        listInteger.add(15); // index 4
        system.debug('list of integers is ==> '+ listInteger);

        Integer index3Value = listInteger.get(3);
        //OR
         Integer index3Valuev2= listInteger[3];
         System.debug('index3Value  ==>  ' + index3Value);
         System.debug('index3Valuev2  ==>  ' + index3Valuev2);
    }
    public static void allCats() {
        //create list of cat class 
        List<cat> cats = new List<cat>();
        // add elements in list of cad 
        cat c1 =new cat ('ceysin', 'sari');
        cat c2=new cat ('tekir', 'siyah');
        cat c3=new cat ('becir', 'mor');
        cats.add(c1);
        cats.add(c2);
        cats.add(c3);
        system.debug('cats ==>'+ cats);

        if (!cats.isEmpty()) {
            system.debug('Cat at 0 ' +  cats[0]);
        }

    }
    public static void iterateList(){
        List<Integer> listInteger = new List<Integer>();
        listInteger.add(15); // index 0
        listInteger.add(14); // index 1
        listInteger.add(22); // index 2
        listInteger.add(65); // index 3
        listInteger.add(15); // index 4

        for (integer eachInteger : listInteger) {
            system.debug(eachInteger);
        }
        
    }
}