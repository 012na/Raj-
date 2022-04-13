public class FetchAccountData
{
	public HttpResponse AccountToAccount_Info()
    {
		GenerateToken gt= new GenerateToken();
		Map<String, object> AccessToken =(Map<String, Object>)JSON.deserializeUntyped(gt.PostRequestToGenerateAccessToken());
        HttpResponse response;
		if(AccessToken.get('access_token')!=null)
        {
            Http http = new Http();
			HttpRequest request = new HttpRequest();
			request.setEndpoint(AccessToken.get('instance_url')+'/services/data/v54.0/query/?q=SELECT+id,name+FROM+Account');
			request.setHeader('Authorization', AccessToken.get('token_type') + ' ' + AccessToken.get('access_token'));
			request.setMethod('GET');
			response = http.send(request);
        }
        else
        {
            System.debug('access token not generated..');
		}
		System.debug('Freshe Acccount Response : '+response.getBody());
		List<AccountInfoObject__c> accountInfo= new List<AccountInfoObject__c>();
		if(response.getStatusCode() == 200)
        {
			Map<String, Object> accountResponse = (Map<String, Object>)JSON.deserializeUntyped(response.getBody());
			List<Object> accountObject = (List<Object>)accountResponse.get('records');
			for(Object obj:accountObject)
            {
				Map<String, Object> recordsObj = (Map<String, Object>)obj;
				accountInfo.add( new AccountInfoObject__c(Account_ID__c=String.valueOf(recordsObj.get('Id')), 
                                       		Account_Name__c = String.valueOf(recordsObj.get('Name'))) );
			}
		insert accountInfo;
            System.debug('account data : '+accountResponse.get('records'));
            System.debug('custom object data: '+accountInfo);
		}
        else
        {
            System.debug('account data is not inserted into custom object succesfully');
		}
        return response;
	}
}