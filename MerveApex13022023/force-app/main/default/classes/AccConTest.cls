@isTest
public class AccConTest {
    @isTest
    public static void AccConKayitTest(){
        AccCon.AccConKayit('A şirket','Merve','Öztürk');
        Test.startTest();
        Account a=[SELECT Id,Name FROM Account];
        Contact b=[SELECT Id,LastName,FirstName,AccountId FROM Contact];
        Test.stopTest();
        System.debug(a);
        System.debug(b);
        System.assertEquals('A şirket', a.Name, 'Name bilgisi yanlış');
        System.assertEquals('Öztürk', b.LastName, 'LastName yanlış');
        System.assertEquals('Merve', b.FirstName, 'FirstName Yanlış');
        System.assertEquals(a.Id, b.AccountId, 'Id kısım hatalı');
    }
    @isTest
    public static void singleTest(){
        for(Integer i=1;i<=50;i++){
            AccCon.single('Şirket  '+i);
        }   
    }
    @isTest
    public static void MultiTest(){
        list<string> Nlist= new list<string>();
        for(integer j=1;j<=50;j++){
            Nlist.add('Şirket  '+j);
        }
        AccCon.Multi(Nlist);
    }
}