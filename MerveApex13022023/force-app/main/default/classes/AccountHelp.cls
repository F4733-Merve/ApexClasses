public class AccountHelp {
    public static void SimpleInsert(List<Account> x){
         for(Account a:x){
                a.Site='www.bilgi.com';
                a.Fax='123456789';
             a.Name=a.Name.toUpperCase();
            }
    }
    public static void ValidationRule(List<Account> y){
        for(Account b:y){
            if(String.isBlank(b.Phone)){
                b.Phone.addError('Telefon bilgisi gerekli');
            }
        }
    } 
    public static void ContactCreate(List<Account> z){
        List<Contact> a=new List<Contact>();
        for(Account b:z){
            Contact c=new Contact();
            c.LastName='Contact Data  ';
            c.AccountId=b.Id;
            a.add(c);
        }  //for bitiş
        insert a;
    }
    public static void UpdateKontrol(List<Account> t){
        for(Account k:t){
            if(String.isBlank(k.Phone)){
                k.Phone.addError('Lütfen Telefon Bilgisini SİLMEYİN');
            }
     }   
   }
}