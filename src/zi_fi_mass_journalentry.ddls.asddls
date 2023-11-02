@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '[fi] 대량전표생성 CDS VIEW'
define root view entity zi_fi_mass_journalentry
  as select from ztb_fi_je_head
  composition [1..*] of zi_fi_mass_journalentry_item as _Item
  association [0..*] to I_JournalEntry               as _JournalEntry on $projection.Accountingdocument = _JournalEntry.AccountingDocument

{
  key header_uuid            as HeaderUuid, // unique key값

      case when accountingdocument is initial then 0
      else 1 // White(0) Red(1) Yellow(2)
      end                    as statusCriticality, // 처리상태 상수값

      request_id             as RequestId, // 요청 key값
      companycode            as Companycode, // 회사코드
      accountingdocumenttype as Accountingdocumenttype, // 전표유형
      documentdate           as Documentdate, // 분개일(증빙일)
      postingdate            as Postingdate, // 전기일
      documentheadertext     as Documentheadertext, // 헤더텍스트
      documentreferenceid    as Documentreferenceid, // 참조번호
      accountingdocument     as Accountingdocument, // 전표번호
      errmsg                 as Errmsg, // 처리 에러메시지
      createdby              as Createdby,
      createdat              as Createdat,
      lastchangedby          as Lastchangedby,
      lastchangedat          as Lastchangedat,

      _Item,
      _JournalEntry
}
