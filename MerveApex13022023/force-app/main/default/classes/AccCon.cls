public class AccCon {
    public static void AccConKayit(String n,String fn,String lsn){
        Account x=new Account();
        x.Name=n;
        insert x;
        Contact y=new Contact();
        y.FirstName=fn;
        y.LastName=lsn;
        y.AccountId=x.Id;
        insert y;
    }
    public static void single(String isim){
        Account a=new Account();
        a.Name=isim;
        insert a;
    }
    public static void Multi(list<string> a) {
        list<Account> h=new list<Account>();
        for(string d:a){
            Account s=new Account();
            s.Name=d;
            h.add(s);
        }//for bitiş
        insert h;
    }
}