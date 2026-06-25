@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds for domestic sales'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_DOMES_SALES_MUT as select from zdomes_sales_mut
{
    key vbeln as Vbeln,
    erdat as Erdat,
    amount_inr as AmountInr
}
