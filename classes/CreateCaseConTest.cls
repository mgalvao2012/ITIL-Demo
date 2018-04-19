@isTest
private class CreateCaseConTest {

    static testmethod void validateController(){
    List<Case> cases = new List<Case>{};
    
    PageReference pageRef = Page.CreateCase;
    Test.setCurrentPageReference(pageRef);

    Case c = new Case();
    c.Subject='My Test Case';
    cases.add(c);
    insert cases;
     
    ApexPages.CurrentPage().getparameters().put('id', cases[0].id);
    ApexPages.StandardController sc = new ApexPages.standardController(cases[0]);
        
    CreateCaseCon controllerExt = new CreateCaseCon(sc);
    controllerExt.caseCreate();

    }

}