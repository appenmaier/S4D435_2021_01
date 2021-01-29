@AbapCatalog.sqlViewName: 'Z00ICURRCODE'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View: Currency Code'
@VDM.viewType: #BASIC
define view Z00_I_CurrencyCode
  as select from tcurc
{
  key waers
}
