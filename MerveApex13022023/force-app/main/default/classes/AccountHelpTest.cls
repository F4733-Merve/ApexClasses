@isTest
public class AccountHelpTest {
@isTest
    public static void SimpleInsertTest(){
        Account x=new Account();
        x.Name='Trigger-AccountHelpTest-1';
        x.Phone='0987654';
        insert x;
        Account d=[SELECT Id, Name, Fax, Phone, Site FROM Account];
        System.debug(d);
    }
}