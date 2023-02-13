public class Tekrar {
    public static Integer DAlan(Integer a,Integer b){
        Integer s=a*b;
        Return s;
    }
    public static void DCevre(Integer x, Integer y){
        Integer z=2*(x+y);
        System.debug(z);
    }
    public static Integer HesapM(String durum,Integer k,Integer m){
      Integer sonuc=0;
        if(durum=='sum'){
            sonuc=k+m;
        } else if(durum=='sub'){
            sonuc=k-m;
        }else if(durum=='mul'){
            sonuc=k*m;
        }else if(durum=='div'){
            sonuc=k/m;
        }
        Return sonuc;
    }
}