@AbapCatalog.sqlViewName: 'Z00ITRAVELTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Travel Transactional View'
@VDM.viewType: #TRANSACTIONAL
@ObjectModel: {
    compositionRoot: true,
    transactionalProcessingEnabled: true,
    writeActivePersistence: 'Z00_V_TRAVEL',

    modelCategory: #BUSINESS_OBJECT,
    representativeKey: 'TravelNumber',
    semanticKey: ['TravelAgency', 'TravelNumber']
}
define view Z00_I_TravelTP
  as select from Z00_I_Travel

{
  key TravelAgency,
  key TravelNumber,
      TravelDescription,
      Customer,
      StartDate,
      EndDate,
      Status,
      ChangedAt,
      ChangedBy
}
