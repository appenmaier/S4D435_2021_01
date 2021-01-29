@AbapCatalog.sqlViewName: 'Z00ICONNTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Transactional View: Connection'
@VDM.viewType: #TRANSACTIONAL
@ObjectModel: {
//    writeActivePersistence: 'spfli',
    writeActivePersistence: 'Z00_V_CONNECTION',

//    createEnabled: true,
//    updateEnabled: true,
//    deleteEnabled: true,

    representativeKey: 'ConnectionId',
    semanticKey: ['CarrierId', 'ConnectionId']
}
define view Z00_I_ConnectionTP
  as select from Z00_I_Connection
  association [1] to Z00_I_CarrierTP as _Carrier on $projection.CarrierId = _Carrier.CarrierId
{
  key CarrierId,
  key ConnectionId,
      CityFrom,
      CityTo,
      @ObjectModel.association.type: [#TO_COMPOSITION_PARENT, #TO_COMPOSITION_ROOT]
      _Carrier
}
