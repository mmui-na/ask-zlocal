CLASS lhc_zi_fi_mass_journalentry DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_fi_mass_journalentry RESULT result.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR zi_fi_mass_journalentry RESULT result.

    METHODS btn_journal_entry FOR MODIFY
      IMPORTING keys FOR ACTION zi_fi_mass_journalentry~btn_journal_entry.

ENDCLASS.

CLASS lhc_zi_fi_mass_journalentry IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD btn_journal_entry.
  ENDMETHOD.

ENDCLASS.
