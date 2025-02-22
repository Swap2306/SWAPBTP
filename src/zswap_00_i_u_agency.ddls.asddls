@AbapCatalog.sqlViewName: 'ZSQL_00_I_U_AGCY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agency'
@Metadata.ignorePropagatedAnnotations: true
define view zswap_00_i_u_agency as select from /dmo/agency association[1] to
I_Country as _Country
on $projection.country_code = _Country.Country
{
key agency_id as AgencyId,
@Semantics.text: true
name as AgencyName,
street as AStreet,
postal_code as APostalcode,
city as ACity,
country_code as ACountry,
phone_number as APhone,
email_address as AEmailAddress,
web_address as AWebaddress ,
_Country
}
