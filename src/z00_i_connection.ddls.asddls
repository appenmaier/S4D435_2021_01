@AbapCatalog.sqlViewName: 'Z00ICONN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Basic View: Connection'
@VDM.viewType: #BASIC
define view Z00_I_Connection
  as select from spfli
{
  key carrid   as CarrierId,
  key connid   as ConnectionId,
      cityfrom as CityFrom,
      cityto   as CityTo
}
