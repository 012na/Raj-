public class FutureMethodExample 
{
    @future   
    public static void deletingRecords()
    {
        system.debug('inside the future annotated method');     
        Contact[] contactsDel = [SELECT Id FROM Contact WHERE LastName='Smith']; 
		delete contactsDel;  
     }
}

/*in anonymous window:
 FutureMethodExample.deletingCaseRecords();
*/