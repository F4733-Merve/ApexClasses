@isTest
public class AccountTriggerTest {
@isTest
    public static void testAccountTrigger(){
        Account acc= new Account();
        acc.Name='Test Trigger Account';
        acc.AnnualRevenue=200000;
        acc.CustomerPriority__c='Low';
        
        insert acc;
        
        Account singleAcc=[SELECT Name, Description FROM Account WHERE Id =:acc.Id];
        System.assertEquals('Account Priority is  :  Low', singleAcc.Description);
        System.assertEquals('TEST TRİGGER ACCOUNT', singleAcc.Name);
        
        acc.Name='Updated AccountName';
        acc.AnnualRevenue=200000;
        acc.CustomerPriority__c='High';
        update acc;
        
        singleAcc=[SELECT Name, Description FROM Account WHERE Id =:acc.Id];
          System.assertEquals('Account Priority is  :  High', singleAcc.Description);
        System.assertEquals('UPDATED ACCOUNTNAME', singleAcc.Name);
        
        
        
    }
}