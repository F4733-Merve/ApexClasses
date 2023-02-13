public class Mat {
    public static Integer KareAlan(Integer a){
        return a*a;
    }
    public static void Denklem(Integer x){
        Integer y=2*x+5;
        System.debug('sonuc: '+y);
    }
    public static Integer Bul(Integer f){
        Integer faktoriyel=1;
        for(Integer i=1;i<=f;i++){
            faktoriyel=faktoriyel*i;
        }//bitiş
        return faktoriyel;
    }
    public static void Metin(String c){
        System.debug('Hello '+'   '+c);
    }
    public static void UcgenAlan(Decimal t,Decimal h){
        Decimal alan=(t*h)/2;
            System.debug('Üçgen Alan Sonuc: '+alan);
    }
    public static Integer MinBul(Integer b,Integer k,Integer d){
        if(b<k && b<d){
            return b;
        }else if(k<b && k<d){
            return k;
        }else {
            return d;
        }
    }
}