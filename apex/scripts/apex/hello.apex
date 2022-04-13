GenerateToken gt=new GenerateToken();
gt.PostRequestToGenerateAccessToken();

FetchAccountData fad=new FetchAccountData();
fad.AccountToAccount_Info();

FetchAccountDataSchedule sch=new FetchAccountDataSchedule();
String cronExp='0 0 * * * ?';
System.schedule('job1', cronExp, sch);

String cronExp1='0 0 2 * * ?'; 
System.schedule('scheduled to 2AM',cronExp1,new SchedulableApexExample()); 

BatchApexExample ae=new BatchApexExample();
Database.executeBatch(ae,200);

QueueableDemo qd= new QueueableDemo();
Id jobId=System.enqueueJob(qd);
System.debug('jobId: '+jobId);


FutureMethodExample.deletingRecords();