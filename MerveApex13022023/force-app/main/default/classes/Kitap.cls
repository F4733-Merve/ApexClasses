public class Kitap {
    public static void Kayit(String y,String x,String z){
        //yayınevi ekleme
Yay_nevi__c a=new Yay_nevi__c();
a.Name='öztürk yayınevi';
insert a;
//yazar ekleme
Yazar__c b=new Yazar__c();
b.Name='özkul yazar';
b.Yay_nevi__c=a.id;
insert b;
//kitap ekleme
Kitap__c c=new Kitap__c();
c.Name='Merve nin İncileri kitap';
c.Yazar__c=b.id;
insert c;
    }
 }