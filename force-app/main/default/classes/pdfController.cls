public class pdfController {
    
    public Opportunity opp {get;set;}
    public List<Quote> quotes {get;set;}
            
    public pdfController (){
        Id id = ApexPages.currentPage().getParameters().get('id');
        opp = [Select Name,Amount,Account.Name,CloseDate from Opportunity where Id=:id limit 1];
        quotes = [Select Name, Subtotal, Discount, TotalPrice,ExpirationDate from quote where OpportunityId=:id ];
        
    }
}