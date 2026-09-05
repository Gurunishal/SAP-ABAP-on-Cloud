@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product CDS Entity, Basic, Interface, Dimension'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC
@Analytics.dataCategory: #DIMENSION
define view entity ZI_ATS_GS_Prod as select from zats_gs_prod
{
    key product_id as ProductId,
    name as Name,
    category as Category,
    @Semantics.amount.currencyCode: 'Currency'
    price as Price,
    currency as Currency,
    @Semantics.amount.currencyCode: 'Currency'
    discount as Discount
}
