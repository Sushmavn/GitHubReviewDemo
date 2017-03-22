public with sharing class CreditCheckRequestService 
{/*
    public static final String RESUBMIT_TYPE = 'RESUBMITTING';
    public static final String NEW_TYPE = 'SUBMITTED';
    public static final String ERROR_TYPE = 'ERROR';
    public static final String PASSING_STATUS = 'PASS';
    
    public static void updateRelatedAccountStatus( Map< Id, Credit_Check_Request__c > requestId2Request )
    {
        List<Account> accounts = new List<Account>();
        Map< Id, Id > accountId2RequestId = new Map< Id, Id >();
                
        for ( Credit_Check_Request__c creditRequest : requestId2Request.values() )
        {
            if ( creditRequest.Status__c != null && creditRequest.Status__c != '' && creditRequest.Account__c != null )
            {
                Account account = new Account(Id = creditRequest.Account__c );
                
                account.Credit_Check_Status__c = creditRequest.Status__c;
                
                account.Credit_Check_Error_Message__c = creditRequest.Error_Message__c;
                
                if ( creditRequest.Status__c.toLowerCase() == PASSING_STATUS.toLowerCase() )
                {
                    account.Credit_Check_Passed__c = true;
                    account.Credit_Check_Approval_Date__c = System.today();
                    
                    accountId2RequestId.put( account.Id, creditRequest.Id );
                }
                
                Database.DMLOptions dml = new Database.DMLOptions();
                dml.allowFieldTruncation = true;
                account.setOptions( dml );
                
                accounts.add( account );
            }
        }
        
        updateAccounts( accounts, requestId2Request, accountId2RequestId );
    }
    
    public static void updateAccounts( List<Account> accounts, Map< Id, Credit_Check_Request__c > requestId2Request, Map< Id, Id > accountId2RequestId )
    {
        if ( !accounts.isEmpty() )
        {
            try
            {
                update accounts;
            }
            catch ( DmlException dmlEx )
            {
                for (Integer i = 0; i < dmlEx.getNumDml(); i++) 
                {
                    Id accountId = dmlEx.getDmlId( i );
                    
                    Id requestId = accountId2RequestId.get( accountId );
                    
                    requestId2Request.get( requestId ).addError( dmlEx.getDmlMessage(i) );
                }
            }
        }
    }
 */   
}