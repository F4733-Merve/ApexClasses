@isTest
public class AccountCreaterTest {
@isTest
    public static void testCreateAcc(){
        String accName='Test AccountCreate ';
        Integer accAnnualRevenue=200000;
        AccountCreater.createAcc(accName, accAnnualRevenue);
        
        Account createdAccount = [SELECT Name, AnnualRevenue FROM Account WHERE Name =: accName LIMIT 1];
        
        System.assertEquals('TEST ACCOUNTCREATE ', createdAccount.Name);
         System.assertEquals(200000, createdAccount.AnnualRevenue);
    }
    @testSetup
    public static void setup(){
        Account acc= new Account();
        acc.Name='Test Account';
        acc.AnnualRevenue=2000000;
        insert acc;
    }
    @isTest
    public static void testAccPriority(){
        Account acc=[SELECT Name, AnnualRevenue FROM Account WHERE Name =:'Test Account' LIMIT 1];
        String priority= AccountCreater.accPriority(acc.Name);
        assert.areEqual( 'High', Priority);
        
        acc.AnnualRevenue=750000;
        update acc;
         priority= AccountCreater.accPriority(acc.Name);
        assert.areEqual( 'Medium', Priority);
        
          acc.AnnualRevenue=250000;
        update acc;
         priority= AccountCreater.accPriority(acc.Name);
        assert.areEqual( 'Low',Priority);
     }
    
    
    
    
    
    
    
    
    
    
}