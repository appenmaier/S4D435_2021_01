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
{
      @Search.defaultSearchElement: true
  key CarrierId,
      @Search.defaultSearchElement: true
      CarrierName,
      CurrencyCode,
      URL
}
