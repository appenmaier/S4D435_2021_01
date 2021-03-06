@AbapCatalog.sqlViewName: 'Z00ITRAVEL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Flight Travel Interface View'

@VDM.viewType: #BASIC

define view Z00_I_Travel
  as select from z00_travel
{
  key agencynum as TravelAgency,
  key travelid  as TravelNumber,
      trdesc    as TravelDescription,
      customid  as Customer,
      stdat     as StartDate,
      enddat    as EndDate,
      status    as Status,
      @Semantics.systemDateTime.lastChangedAt: true
      changedat as ChangedAt,
      @Semantics.user.lastChangedBy: true
      changedby as ChangedBy
}
