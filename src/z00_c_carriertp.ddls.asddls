@AbapCatalog.sqlViewName: 'Z00CCARRTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
@Metadata.allowExtensions: true
@EndUserText.label: 'Consumption View: Carrier'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
@ObjectModel: {
    transactionalProcessingDelegated: true,
    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}
define view Z00_C_CarrierTP
  as select from Z00_I_CarrierTP
  association [1] to Z00_I_CurrencyCode as _Currency    on $projection.CurrencyCode = _Currency.waers
  association [*] to Z00_C_ConnectionTP as _Connections on $projection.CarrierId = _Connections.CarrierId
{
      @Search.defaultSearchElement: true
  key CarrierId,
      @Search.defaultSearchElement: true
      CarrierName,
      @ObjectModel.foreignKey.association: '_Currency'
      CurrencyCode,
      URL,
      _Currency,
      @ObjectModel.association.type: [#TO_COMPOSITION_CHILD]
      _Connections
}
