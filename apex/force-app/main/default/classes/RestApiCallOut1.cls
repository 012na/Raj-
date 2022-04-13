public class RestApiCallOut1 {
public static HttpResponse checkingPostReq() {
Http http = new Http();
HttpRequest request = new HttpRequest();
request.setEndpoint('callout:MyNamedCreds');
request.setMethod('POST');
request.setBody('{"name":"autogenerationofbearertoken"}');
HttpResponse response = http.send(request);
if(response.getStatusCode() != 201) 
{
   System.debug('unexpected error: ' + response.getStatusCode() + ' ' + response.getStatus());

}
else
{
System.debug(response.getBody());
}
return response;
}
}