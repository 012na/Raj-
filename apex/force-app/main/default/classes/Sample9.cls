public class Sample9 {
    public static HttpResponse makeGetCallout() {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://AP27.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9pRzvMkjMb6mfgr1q7sUPp70zFexHrp0gFwv3k9SVHHl.B13fDyXj8uFrnDbZHZQmWtUcNc06zgrV_CL2&client_secret=9E7DFB208E02FE68DFB5538724D60FFD4B2924B6B1377F258A15FC966BB33E3A&username=nanjum@wise-bear-bujehz.com&password=Redmi@1234Y56GPnQVKkDR052Rh5oju2JR9');
        request.setMethod('GET');  //retrieving the account data recs from the endpointurl
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) //200 error code means the request has been succeeded 
        {
            // Deserializes the JSON string into collections of primitive data types.
            Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
            // Cast the values in the 'accounts' key as a list
            List<Object> Account = (List<Object>) results.get('account');
            System.debug('Received the following animals:');
            for(Object accounts: Account) {
                System.debug(accounts);
            }
        }
        return response;
    }
}