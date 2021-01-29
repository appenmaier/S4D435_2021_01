CLASS zcl_00_a_currency_to_euro DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_a_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_action~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_00_a_currency_to_euro IMPLEMENTATION.

  METHOD /bobf/if_frw_action~execute.

    DATA lt_carriers TYPE zt00i_carriertp.

    io_read->retrieve(
      EXPORTING
        iv_node       = is_ctx-node_key
        it_key        = it_key
      IMPORTING
        eo_message    = eo_message
        et_data       = lt_carriers
        et_failed_key = et_failed_key ).

    LOOP AT lt_carriers REFERENCE INTO DATA(lr_carrier).
      lr_carrier->currencycode = 'EUR'.

      DATA(ls_key) = it_key[ sy-tabix ].

      io_modify->update(
        EXPORTING
          iv_node = is_ctx-node_key
          iv_key  = ls_key-key
          is_data = lr_carrier ).
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
