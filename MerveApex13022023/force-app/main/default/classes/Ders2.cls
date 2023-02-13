public class Ders2 {
    public static void ListKontrol(Integer b,Integer k){
        List<Integer> x=new List<Integer>();
        List<Integer> y=new List<Integer>();
        for(Integer i=1;i<b;i++){
            x.add(i);
        } //1.for bitiş
        System.debug('1.Liste  :'+x);
        
        for(Integer a=100;a>k;a--){
            y.add(a);
        }
        System.debug('2.Liste  :'+y);
    }
}