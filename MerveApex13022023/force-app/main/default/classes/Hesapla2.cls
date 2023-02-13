public class Hesapla2 {
    public static Integer num1{set; get;}
    public static Integer num2{set; get;}
    public static Integer sonuc{set; get;}
    
    public static Integer t{set; get;}
    
    public static void Carpma(){
        sonuc=num1*num2;
    }
    public static void SayiUret(){
        t=Integer.valueOf(Math.random()*100);
    }
  
}