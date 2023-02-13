public class Sali {
    public String CiftTek(Integer a){
        Integer sonuc=Math.mod(a,2);
        if(sonuc==0){
            return 'çift';
        }else{
            return 'tek';
        }
    }
    public void Metin(String m){
        System.debug(m);
    }
    public static void LoopKontrol(){
        List<String> b=new List<String>{'Ali','Veli','Jale','Hale'};
            for(Integer i=0;i<b.size();i++){
                if(b.get(i)=='Jale'){
                   // continue;//o nesneyı es geç durumu bitir.
                   break;// o işleme kadar getır. diğerlerini yazdırma
                } //if bitiş
                System.debug(b.get(i));
            }
    }
    public void Kayit(Integer n, String name, String b){
        Map<Integer,String> Doktor1=new Map<Integer,String>();
        Map<Integer,String> Doktor2=new Map<Integer,String>();
        if(b=='Genel Dahiliye'){
            Doktor1.put(n,name);
            System.debug('Dr.Merve :'+Doktor1);
        }else if(b=='Genel Cerrahi'){
             Doktor2.put(n,name);
            System.debug('Dr.Yavuz :'+Doktor2);
        }else{
            System.debug('Hastanemizde aradığınız birim bulunmamaktayız...');
        }        
        }
    }