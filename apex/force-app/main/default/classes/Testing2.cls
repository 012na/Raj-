@isTest 
private class Testing2
 {
    static testMethod void testPostCallout() 
    {
        Test.setMock(HttpCalloutMock.class, new Testing());  
        String strResp = FetchAccountData.AccountToAccount_Info(2);
    }
}