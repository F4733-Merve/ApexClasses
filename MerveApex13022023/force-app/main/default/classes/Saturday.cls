public class Saturday {
    public static void createAcc(String accName){
        List<Account> accList=new List<Account>();
        for(Integer i=1;i<10;i++){
            Account acc=new Account();
            acc.Name=accName+'__'+İ;
            accList.add(acc);
        }
        insert accList;
    }
    public static void changeName(){
        List<Opportunity> newOppList=new List<Opportunity>();
        
        for(Opportunity opp:[SELECT Id,Name, StageName FROM Opportunity]){
            if(opp.StageName=='Closed Won'){
                opp.Name=opp.Name+'__WON';
                newoppList.add(opp);
            }
        }
        upDate newOppList;
    }
}