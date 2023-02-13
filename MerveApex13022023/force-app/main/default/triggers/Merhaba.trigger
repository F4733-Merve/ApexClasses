trigger Merhaba on Account (before insert, after insert,
                            before update, after update,
                            before delete, after delete,
                            after undelete) {
            //INSERT                    
    if(Trigger.isInsert){
        if(Trigger.isBefore){
           AccountHelp.SimpleInsert(Trigger.new); //Class la bağlantı kuruldu.
            AccountHelp.ValidationRule(Trigger.new);
        }else{
            AccountHelp.ContactCreate(Trigger.new);
        }
        //UPDATE
    }else if(Trigger.isUpdate){
        if(Trigger.isBefore){
            AccountHelp.UpdateKontrol(Trigger.new);
          //  System.debug(Trigger.new);
          //  System.debug(Trigger.old);
           // System.debug(Trigger.newMap);
           //  System.debug(Trigger.oldMap);
         //   System.debug('Update before çalıştı');
        }else{
         //   System.debug('Update after çalıştı');
            for(Account e:Trigger.new){
                if(e.Active__c== 'No' && Trigger.oldMap.get(e.Id).Active__c=='Yes'){
                    System.debug('Active durumu değiştii.');
                }
            }
        }  
        //DELETE
    }else if(Trigger.isDelete){
        if(Trigger.isBefore){
            System.debug('Delete before çalıştı');
        }else{
            System.debug('Delete after çalıştı');
        }
        //UNDELETE-AFTER
    }else if(Trigger.isUndelete){
        System.debug('Undelete after çalıştı');
    }
}