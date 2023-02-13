public class bookclass {
    public static string isim {set;get;}
    public static Book__c singlebook{set;get;}
    public static list<Book__c> getBooklist(){
        list<Book__c> b=[Select id, Name from Book__c];
        return b;
    }
    public PageReference Deletemethod(){
        string inputDeleteId=system.currentPageReference().getParameters().get('DeleteId');
        Book__c c=[select id,Name from Book__c where id=:inputDeleteId];
        delete c;
        return null;
    }
    public PageReference showmethod(){
        string inputShowId=system.currentPageReference().getParameters().get('ShowId');
        singlebook=[select id,Name from Book__c where id=:inputShowId];
        PageReference nextPage=new PageReference('/apex/Detailpage?id='+inputShowId); //url olusturup hangi sayfaya gidecek onu belirtiyoruz
        return nextPage;
}
    public PageReference GuncelleMethod(){
        string gelgunid=System.currentPageReference().getParameters().get('gunid');
        Book__c y=[SELECT id,Name from Book__c where id=:gelgunid];
        y.Name=isim;
        PageReference np=new PageReference('/apex/KitapHome');
        return np;
    }
}