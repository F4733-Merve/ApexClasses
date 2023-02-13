public class SinifKontrol {
    public static void Kontrol(String name,Boolean z,Boolean k,Integer d){
        if(z==true){
            System.debug(name + 'Derse hoş geldiniz');
        }else{
            System.debug(name + 'Sizi derste göremedik');
        }
        if(z==false && d>=3){
            System.debug('Yolunda gitmeyen bir durum mu var');
        }else{
            System.debug(name + 'Umutlu olun');
        }
        if(z==false && d>=3 && k==false){
            System.debug('Bire bir görüşmeye alınacak');
        }
    }
}