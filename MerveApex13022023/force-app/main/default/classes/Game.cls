public class Game {
    public static Integer gelendeger{set;get;}
    public static string ymsg{set;get;}
    public static string dmsg{set;get;}
    
    public static Integer sayi1{set;get;}
    public static Integer sayi2{set;get;}
    public static string sonuc{set;get;}
    
    public static void SayiKontrol(){
        Integer x=Integer.valueOf(Math.random()*100);
        if(x==gelendeger){
            dmsg='Tebrikler doğru tahmin ettiniz';
        }else{
            ymsg='Üzgünüm Tahmininiz Yanlış';
        }
    }
    public static void MaxKontrol(){
        if(sayi1>sayi2){
            sonuc='en büyük sayi:'+sayi1;
        }else{
            sonuc='en büyük sayı:'+sayi2;
        }
    }
}