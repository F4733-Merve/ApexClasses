public class hesapla {
    public static void DAlan(Integer kenarA,Integer kenarB){
        Integer s=kenarA*kenarB;
        System.debug('Dikdörtgen Alan Sonucu :'+s);
    }
    public static Decimal UcgenAlan (Decimal taban,Decimal yukseklik){
     //   Decimal sonuc=(taban*yukseklik)/2;
        return taban*yukseklik/2;
    }
    public static void DonguKontrol(Integer sayac,String mesaj){
         for(Integer a=1;a<=sayac;a++){
            System.debug(mesaj);
        }
    } 
}