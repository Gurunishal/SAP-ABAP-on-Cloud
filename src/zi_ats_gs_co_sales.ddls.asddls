@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales and Product data combined'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #FACT
define view entity ZI_ATS_GS_CO_SALES as select from ZI_ATS_GS_SALES as Sales
association of many to one ZI_ATS_GS_Prod as _Product
on $projection.Product = _Product.ProductId
{
    key ItemId,
    OrderId,
    Product,
    GrossAmount,
    Currency,
    Quantity,
    Uom,
    /* Associations */
    _Header.buyer as Buyer,
    _Product.Category as ProductCategory,
    _Product.Name as ProductName
}
