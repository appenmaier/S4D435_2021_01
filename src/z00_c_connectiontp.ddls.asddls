@AbapCatalog.sqlViewName: 'Z00CCONN'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View: Connection'
@VDM.viewType: #CONSUMPTION
define view Z00_C_ConnectionTP
  as select from Z00_I_ConnectionTP
  association [1] to Z00_C_CarrierTP as _Carrier on $projection.CarrierId = _Carrier.CarrierId
{
      @UI.lineItem: [{ position: 10 }]
  key CarrierId,
      @UI.lineItem: [{ position: 20 }]
  key ConnectionId,
      @UI.lineItem: [{ position: 30 }]
      CityFrom,
      @UI.lineItem: [{ position: 40 }]
      CityTo,
      @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
      _Carrier
}
