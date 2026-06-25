@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds for export sales'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_EXP_SALES_MUT as select from zexp_sales_mut
{
    key vbeln as Vbeln,
    erdat as Erdat,
    amount_usd as AmountUsd
}
