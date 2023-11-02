@EndUserText.label: '[fi] 대량전표생성 Projcection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define root view entity ZC_FI_MASS_JOURNALENTRY
  provider contract transactional_query
  as projection on zi_fi_mass_journalentry
{
  key HeaderUuid,
      statusCriticality,
      RequestId,
      Companycode,
      Accountingdocumenttype,
      Documentdate,
      Postingdate,
      Documentheadertext,
      Documentreferenceid,
      Accountingdocument,
      Errmsg,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,

      /* Associations */
      _Item : redirected to composition child ZC_FI_MASS_JOURNALENTRY_ITEM,
      _JournalEntry
}
