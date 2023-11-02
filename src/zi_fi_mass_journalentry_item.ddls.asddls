@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '[fi] 대량전표생성 CDS VIEW (ITEM)'
define view entity zi_fi_mass_journalentry_item
  as select from ztb_fi_je_item
  association to parent zi_fi_mass_journalentry as _Header on $projection.HeaderUuid = _Header.HeaderUuid
{
  key item_uuid                   as ItemUuid,
      header_uuid                 as HeaderUuid,
      request_id                  as RequestId,
      acctype                     as Acctype,
      glaccount                   as Glaccount,
      debtor                      as Debtor,
      creditor                    as Creditor,
      altvrecnclnaccts            as Altvrecnclnaccts,
      assignmentreference         as Assignmentreference,
      valuedate                   as Valuedate,
      businessplace               as Businessplace,
      documentitemtext            as Documentitemtext,
      debitcreditcode             as Debitcreditcode,
      costcenter                  as Costcenter,
      amountintransactioncurrency as Amountintransactioncurrency,
      taxbaseamountintranscrcy    as Taxbaseamountintranscrcy,
      taxcode                     as Taxcode,
      createdby                   as Createdby,
      createdat                   as Createdat,
      lastchangedby               as Lastchangedby,
      lastchangedat               as Lastchangedat,

      _Header
}
