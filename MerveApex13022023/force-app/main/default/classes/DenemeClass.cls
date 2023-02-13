public class DenemeClass {
    public static string n{set; get;}
    public static List<Book__c> kayitList{set; get;}
    
    public static void SorguKayit(){
        kayitList=[SELECT Id, Name FROM Book__c];
    }
    public static void Kayit(){
        Book__c x=new Book__c();
        x.Name=n;
        insert x;
    }
}