public class kontrol {
    public static string TCkontrol(Integer sayi){
        Integer sonuc=math.mod(sayi,2);
        if(sonuc==0){
          return 'çift';
        }else{
            return 'tek';
        }
    }
    
    public static String Loginkontrol(String mail,Integer sifre){
    
if(mail=='merve@salesforce.com' && sifre==1234)
{
    return 'başarılı tebrikler';
}else{
    return 'lütfen tekrar deneyiniz';
        }
    }
    public static void Topla(Integer a,Integer b){
           Integer s=a+b;
        System.debug(s);
    }
    public static void mesaj(){
        System.debug('merhaba void');
    } 
}