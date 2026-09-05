@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Pure Transaction, basic, interface, fact'
@Metadata.ignorePropagatedAnnotations: false
@VDM.viewType: #BASIC
@Analytics.dataCategory: #FACT
define view entity ZI_ATS_GS_SALES as select from zats_gs_so_item
association of one to many zats_gs_so_hdr as _Header on
$projection.OrderId = _Header.order_id
{
    key item_id as ItemId,
    order_id as OrderId,
    product as Product,
    gross_amount as GrossAmount,
    currency as Currency,
    quantity as Quantity,
    uom as Uom,
    _Header
}
