//we can schedule an batch class, queueable class or block of code to run in a schedule 
public class SchedulableApexExample implements Schedulable
{
    public void execute(SchedulableContext sc)
    {
        //any code written inside execute method can be scheduled
        //Database.executeBatch(new BatchApexExample());
        List<Account> accs=[SELECT Id,Name FROM Account WHERE CREATEDDATE=Today];
        for(Account acc:accs)
        {
            acc.name='Created Today '+acc.Name;
}
        update accs;
}
//scheduling can be done either from UI OR Programatically using system.schedule() method
}

//anonymous window:
//String cronExp1='0 0 2 * * ?'; (2AM everyday)
//System.schedule('scheduled to 2AM Everyday ',cronExp1,new SchedulableApexExample());( Can monitor all the scheduled jobs and the next scheduled run time from setup> scheduled jobs)