public class GenerateToken
{
    public String PostRequestToGenerateAccessToken()
    {
        HttpResponse response;
        try
        {
			AccessToken__c results = [SELECT endpointurl__c, grant_type__c, client_secret__c, username__c, password__c, client_id__c FROM AccessToken__c];
			Http http = new Http();
			HttpRequest request = new HttpRequest();
			request.setMethod('POST');
			request.setEndpoint(results.endpointurl__c +'/services/oauth2/token');
			request.setBody('grant_type=' +results.grant_type__c+'&client_id=' +results.client_id__c +'&client_secret=' +results.client_secret__c +
						'&username='+ results.username__c +'&password='+results.password__c );
			response = http.send(request);
        	System.debug(response.getBody());
        }
        catch(Exception e)
        {
            system.debug('access token not generated '+e.getMessage());
		}
        return response.getBody(); 
	}
}