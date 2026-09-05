@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Cube'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #COMPOSITE
@Analytics.dataCategory: #CUBE
define view entity ZI_ATS_GS_CO_SLS_CUBE as select from ZI_ATS_GS_CO_SALES
association of many to one ZI_ATS_GS_BP as _BusinessPartner
on $projection.Buyer = _BusinessPartner.BpId
{
    key ItemId,
    OrderId,
    Product,
    @DefaultAggregation: #SUM
    GrossAmount,
    Currency,
    @DefaultAggregation: #SUM
    Quantity,
    Uom,
    Buyer,
    ProductCategory,
    ProductName,
    _BusinessPartner.CompanyName,
    _BusinessPartner.Country
}
