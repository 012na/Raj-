public class BatchApexExample implements DataBase.Batchable<SObject>
{
    public Database.QueryLocator start(Database.BatchableContext BC)
    {
		return Database.getQueryLocator('SELECT Id,Name FROM Account');        
    }
    
    public void execute(Database.BatchableContext bc,List<Account> subListFromStartMethod)
    {
        //logic to process records
        for(Account acc:subListFromStartMethod)
        {
            acc.name='batch updated-'+acc.Name;
        }
        update subListFromStartMethod;
}
    public void finish(Database.BatchableContext bc)
    {
        System.debug('batch jo completed');
}
    
}


//anonymous window:
//Database.executeBatch(new BatcgApexExample(),200);//200 is the batch size