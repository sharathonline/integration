public with sharing class exploreRestAPI_Controller {
    public void execute(){
        //Making a call 
        //Step 1: Instantiate HTTP class
        Http http = new Http();
        //Step 2: HTTPRequest
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://personal299-dev-ed.my.salesforce.com/services/data/v51.0/sobjects/Account');
        req.setMethod('POST');
        req.setHeader('Authorization', 'OAuth '+UserInfo.getSessionId());
        req.setHeader('content-type', 'application/json');
        req.setBody('{"name":"Career Choices"}');
        //Step 3: HTTPResponse
        HttpResponse res = http.send(req);
        

    }
}
