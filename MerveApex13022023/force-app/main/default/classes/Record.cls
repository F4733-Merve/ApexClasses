public class Record {
    public static void RecordStudent(String a,String n){
        Class__c s=new Class__c();
        s.Name=a;
        insert s;
        System.debug(s.Id);
        Student__c k=new Student__c();
        k.Name=n;
        k.Class__c=s.Id;
        insert k;
    }
}