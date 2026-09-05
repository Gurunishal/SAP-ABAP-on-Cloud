@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Business Partner Dimension, Basic, Interface'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_ATS_GS_BP as select from zats_gs_bpa
{
    key bp_id as BpId,
    case bp_role
        when '01' then 'Customer'
        when '02' then 'Supplier'
        when '03' then 'Employee'
        else 'Unknown' end as BPType,
    bp_role as BpRole,
    company_name as CompanyName,
    street as Street,
    country as Country,
    region as Region,
    city as City
}

where bp_role = '01'
