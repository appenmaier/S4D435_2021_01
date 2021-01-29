CLASS zcl_00_d_determine_url DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_d_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_determination~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_00_d_determine_url IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    DATA lt_carriers TYPE zt00i_carriertp.

    io_read->retrieve(
      EXPORTING
        iv_node                 = is_ctx-node_key
        it_key                  = it_key
      IMPORTING
        eo_message              = eo_message
        et_data                 = lt_carriers
        et_failed_key           = et_failed_key ).

    LOOP AT lt_carriers REFERENCE INTO DATA(lr_carrier).
      lr_carrier->url = |http://www.{ lr_carrier->carriername }.com|.
      io_modify->update(
        EXPORTING
          iv_node           = is_ctx-node_key
          iv_key            = lr_carrier->key
          is_data           = lr_carrier ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
