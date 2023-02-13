@isTest
public class BookTest {
@isTest
    public static void KayitTest(){
        List<String> a=new List<String>();
        for(Integer j=1;j<=60;j++){
            a.add('Kitap '+j);
        }
        Book.Kayit('Yazar 4',a);
        Author__c y=[SELECT Id, Name FROM Author__c];
        System.debug(y);
        List<Book__c> z=[SELECT Id,Name,Author__c FROM Book__c];
        
        for(Book__c d:z){
            System.debug(d);
        }//for bitiş
        System.assertEquals('Yazar 4', y.Name, 'Yanlış isim');
        System.assertEquals('Kitap 1',z.get(0).Name,'Yanlış Kitap');
    }
}