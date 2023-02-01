public class MapDemo {
    public static String retriveMonth (integer m) {
        string month = '';
        map<Integer, String> mapMonth = new Map<Integer,String>();
        mapMonth.put(1, 'January');
        mapMonth.put(2, 'February');
        mapMonth.put(3, 'March');
        mapMonth.put(4, 'April');
        mapMonth.put(5, 'May');
        mapMonth.put(6, 'Jun');
        mapMonth.put(7, 'July');
        mapMonth.put(8, 'August');
        mapMonth.put(9, 'September');
        mapMonth.put(10, 'October');
        mapMonth.put(11, 'November');
        mapMonth.put(12, 'December');
        
        
        if (mapMonth.containsKey(m)) {
            month= mapMonth.get(m);
        } else {
            month = 'Error.. Do it logical way... ';
        }
       
        return month;

    }
}