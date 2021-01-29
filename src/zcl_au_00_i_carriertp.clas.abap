CLASS zcl_au_00_i_carriertp DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_auth_draft_active
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_lib_auth_draft_active~check_instance_authority
        REDEFINITION .
    METHODS /bobf/if_lib_auth_draft_active~check_static_authority
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_au_00_i_carriertp IMPLEMENTATION.


  METHOD /bobf/if_lib_auth_draft_active~check_instance_authority.
    "Daten lesen
    DATA lt_carriers TYPE zt00i_carriertp.

    io_read->retrieve(
      EXPORTING
        iv_node                 = is_ctx-node_key
        it_key                  = it_key
      IMPORTING
        eo_message              = eo_message
        et_data                 = lt_carriers
        et_failed_key           = et_failed_key ).

    IF eo_message IS NOT BOUND.
      eo_message = /bobf/cl_frw_message_factory=>create_container( ).
    ENDIF.

    "Aktion CURRENCY_TO_EURO
    IF is_ctx-activity = sc_activity-execute AND is_ctx-action_name = 'CURRENCY_TO_EURO'.
      LOOP AT lt_carriers REFERENCE INTO DATA(lr_carrier).
        AUTHORITY-CHECK OBJECT 'S_CARRID'
            ID 'CARRID' FIELD lr_carrier->carrierid
            ID 'ACTVT' FIELD '02'.
        IF sy-subrc <> 0.
          DATA(lo_message) = NEW cm_devs4d435(
            textid   = cm_devs4d435=>already_cancelled
            severity = cm_devs4d435=>co_severity_error ).

          eo_message->add_cm( lo_message ).
          et_failed_key = VALUE #( BASE et_failed_key ( key = lr_carrier->key ) ).
        ENDIF.
      ENDLOOP.
    ENDIF.

  ENDMETHOD.


  METHOD /bobf/if_lib_auth_draft_active~check_static_authority.
  ENDMETHOD.

ENDCLASS.
