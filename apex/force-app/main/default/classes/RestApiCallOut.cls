public class RestApiCallOut {
public static HttpResponse checkingPostReq() {
Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('https://AP27.salesforce.com/services/oauth2/token?grant_type=password&client_id=3MVG9pRzvMkjMb6mfgr1q7sUPp70zFexHrp0gFwv3k9SVHHl.B13fDyXj8uFrnDbZHZQmWtUcNc06zgrV_CL2&client_secret=9E7DFB208E02FE68DFB5538724D60FFD4B2924B6B1377F258A15FC966BB33E3A&username=nanjum@wise-bear-bujehz.com&password=Redmi@1234Y56GPnQVKkDR052Rh5oju2JR9');
request.setMethod('POST');
//request.setBody('{"name__c":"autogenerationofbearertoken"}');
HttpResponse response = http.send(request);
if(response.getStatusCode() == 200) {
    System.debug(response.getBody());

}
else
{
System.debug('unexpected error: ' + response.getStatusCode() + ' ' + response.getStatus());
}
return response;
}
}