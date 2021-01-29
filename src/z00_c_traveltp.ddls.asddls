@AbapCatalog.sqlViewName: 'Z00CTRAVELTP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Travel Consumption View'
@VDM.viewType: #CONSUMPTION
@OData.publish: true
@Search.searchable: true
@Metadata.allowExtensions: true
@ObjectModel: {
    transactionalProcessingDelegated: true,

    createEnabled: true,
    updateEnabled: true,
    deleteEnabled: true
}
define view Z00_C_TravelTP
  as select from Z00_I_TravelTP
  association [1] to D435_I_Customer as _Customer on $projection.Customer = _Customer.Customer
{
  key TravelAgency,
  key TravelNumber,

      @Search: { defaultSearchElement: true,
                 fuzzinessThreshold: 0.8
               }

      TravelDescription,
      @ObjectModel.foreignKey.association: '_Customer'
      Customer,
      StartDate,
      EndDate,
      Status,
      ChangedAt,
      ChangedBy,
      _Customer
}
