@isTest(seeAllData=True)
private class FetchAccountDataTest
 {
    static testMethod void testPostCallout() 
    {
        Test.startTest();
		Test.setMock(HttpCalloutMock.class, new FetchAccountDataMock());
        FetchAccountData ad=new FetchAccountData();
       	HttpResponse response=ad.AccountToAccount_Info();
        String actualResultValue=response.getBody();
		String expectedResultValue='{"totalSize":14,"done":true,"records":[{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1sAAB"},"Id":"0015j00000Xio1sAAB","Name":"batch updated-batch updated-Sample Account for Entitlements"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1gAAB"},"Id":"0015j00000Xio1gAAB","Name":"batch updated-batch updated-Edge Communications"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1hAAB"},"Id":"0015j00000Xio1hAAB","Name":"batch updated-batch updated-Burlington Textiles Corp of America"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1iAAB"},"Id":"0015j00000Xio1iAAB","Name":"batch updated-batch updated-Pyramid Construction Inc."},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1jAAB"},"Id":"0015j00000Xio1jAAB","Name":"batch updated-batch updated-Dickenson plc"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1kAAB"},"Id":"0015j00000Xio1kAAB","Name":"batch updated-batch updated-Grand Hotels & Resorts Ltd"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1lAAB"},"Id":"0015j00000Xio1lAAB","Name":"batch updated-batch updated-United Oil & Gas Corp."},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1mAAB"},"Id":"0015j00000Xio1mAAB","Name":"batch updated-batch updated-Express Logistics and Transport"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1nAAB"},"Id":"0015j00000Xio1nAAB","Name":"batch updated-batch updated-University of Arizona"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1oAAB"},"Id":"0015j00000Xio1oAAB","Name":"batch updated-batch updated-United Oil & Gas, UK"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1pAAB"},"Id":"0015j00000Xio1pAAB","Name":"batch updated-batch updated-United Oil & Gas, Singapore"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000Xio1qAAB"},"Id":"0015j00000Xio1qAAB","Name":"batch updated-batch updated-GenePoint"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000aEuJwAAK"},"Id":"0015j00000aEuJwAAK","Name":"batch updated-batch updated-Nadia Account"},{"attributes":{"type":"Account","url":"/services/data/v54.0/sobjects/Account/0015j00000XiwcBAAR"},"Id":"0015j00000XiwcBAAR","Name":"batch updated-batch updated-Get Cloudy"}]}';    
        System.assertEquals(actualResultValue, expectedResultValue);
        System.assertEquals(200, response.getStatusCode());
        Test.stopTest();
        System.debug('actualResultValue  '+actualResultValue);
        System.debug('expectedResultValue '+expectedResultValue);

    }
}