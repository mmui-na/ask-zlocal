@EndUserText.label: '[fi] 대량전표생성 Item Projcection View'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true

define view entity ZC_FI_MASS_JOURNALENTRY_ITEM
  as projection on zi_fi_mass_journalentry_item
{
  key ItemUuid,
      HeaderUuid,
      RequestId,
      Acctype,
      Glaccount,
      Debtor,
      Creditor,
      Altvrecnclnaccts,
      Assignmentreference,
      Valuedate,
      Businessplace,
      Documentitemtext,
      Debitcreditcode,
      Costcenter,
      Amountintransactioncurrency,
      Taxbaseamountintranscrcy,
      Taxcode,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,

      /* Associations */
      _Header : redirected to parent ZC_FI_MASS_JOURNALENTRY
}
