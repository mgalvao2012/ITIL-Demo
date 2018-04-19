public with sharing class CreateCaseCon {


//   public CreateCaseCon(ApexPages.StandardController controller){
 //  
 //  }
   public CreateCaseCon(ApexPages.StandardController controller){
   
   }
   
   public PageReference caseCreate(){
       String cid=ApexPages.currentPage().getParameters().get('id');
       Case rec=[SELECT AssetId,Category__c,Description,Status,Subject,Sub_category__c,ContactId,AccountId FROM Case WHERE id=:cid];
       String rt = Schema.Sobjecttype.Case.getRecordTypeInfosByName().get('Problem').getRecordTypeId();
    system.debug('record type ='+rt);
       Case c=new Case();
       c.AssetId=rec.AssetId;
       c.Category__c=rec.Category__c;
       c.Description=rec.Description;
       c.Status=rec.Status;
       c.Subject=rec.Subject;
       c.Sub_category__c=rec.Sub_category__c;
       c.RecordTypeId=rt;
       c.AccountId=rec.AccountId;
       c.ContactId=rec.ContactId;
       c.status='New';
       insert c;
       Id idNewCaseId = c.Id;
       System.debug ('New Case Id='+ idNewCaseId);

      Case li=[select status from Case where id=:idNewCaseId];
      li.status='Waiting for Problem';
      update li;
       return (new pageReference('/'+idNewCaseId));
   }
}