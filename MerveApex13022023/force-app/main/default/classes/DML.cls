public class DML {
    
    public static void Ekle(String a){         // gelecek parametreyı parantez içine tanımlıyorum.
        Account x=new Account();
        x.Name=a;
        insert x;
    }
    public static Integer topla(Integer s,Integer d){
        return s+d;
    }
}