public class Book {
    public static void Kayit(String yzr, List<String> ktp){
        Author__c a=new Author__c();
        a.Name=yzr;
        insert a;
        System.debug(a.Id);
      List<Book__c> k=new List<Book__c>();
        for(Integer i=0;i<ktp.size();i++){
            Book__c b=new Book__c();
            b.Name=ktp.get(i);
            b.Author__c=a.Id;
            k.add(b);
        }//for bitiş
        insert k;
    }
}