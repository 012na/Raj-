public class QueueableDemo implements System.Queueable
{
    public void execute(System.QueueableContext context)
    {
        System.debug('inside execute method of queueable');
        List<Account> listofAccounts=new List<Account>{new Account(Name='Nadia')};
        
        insert listofAccounts;
        System.debug('list of accounts: '+ listofAccounts);
    }
}

/*In anonymous window:
 QueueableDemo qd= new QueueableDemo();
Id jobId=System.enqueueJob(qd);
System.debug('jobId: '+jobId);
*/