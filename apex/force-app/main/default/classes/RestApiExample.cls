@RestResource(urlMapping='/accountDetails/*')
global class RestApiExample {
    @httpGet
    global static void checkingGetReq()
    {
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        Map<String,String> paramsMap=req.params;
        String accountId=paramsMap.get('accountId');
        System.debug(accountId);
        Account acc=[SELECT Id,Name FROM Account WHERE Id=:accountId];
        if(acc!=null)
        {
            JSONGenerator gen=JSON.createGenerator(true);
            gen.writeStartObject();
            	gen.writeFieldName('account');
            		gen.writeStartObject();
            			gen.writeStringField('Id', acc.Id);
            			gen.writeStringField('name', acc.Name);
            		gen.writeEndObject();
            gen.writeEndObject();
            
            string jsonResponse=gen.getAsString();
            res.responseBody=blob.valueOf(jsonResponse);
}
    }
    
    @httpPost
    global static void checkingPostReq()
    {
        RestRequest req=RestContext.request;
        RestResponse res=RestContext.response;
        string requestBody=req.requestBody.toString();
        
        
}
    

}