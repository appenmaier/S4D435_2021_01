CLASS zcl_00_v_mandatory_fields DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_v_supercl_simple
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS /bobf/if_frw_validation~execute
        REDEFINITION .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_00_v_mandatory_fields IMPLEMENTATION.


  METHOD /bobf/if_frw_validation~execute.

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
      eo_message = /bobf/cl_frw_factory=>get_message( ).
    ENDIF.

    LOOP AT lt_carriers REFERENCE INTO DATA(lr_carrier).
      IF lr_carrier->carrierid IS INITIAL OR lr_carrier->carriername IS INITIAL.
        DATA ls_origin_location TYPE /bobf/s_frw_location.
        ls_origin_location-node_key = is_ctx-node_key.
        ls_origin_location-bo_key = is_ctx-bo_key.
        ls_origin_location-key = lr_carrier->key.

        DATA(lo_message) = NEW cm_devs4d435(
          textid             = cm_devs4d435=>already_cancelled
          severity           = cm_devs4d435=>co_severity_error
          ms_origin_location = ls_origin_location ).

        eo_message->add_cm( lo_message ).
        et_failed_key = VALUE #( BASE et_failed_key ( key = lr_carrier->key ) ).
      ENDIF.
    ENDLOOP.

  ENDMETHOD.
ENDCLASS.
