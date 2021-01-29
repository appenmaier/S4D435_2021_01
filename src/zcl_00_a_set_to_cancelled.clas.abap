CLASS zcl_00_a_set_to_cancelled DEFINITION
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



CLASS zcl_00_a_set_to_cancelled IMPLEMENTATION.


  METHOD /bobf/if_frw_action~execute.

    DATA lt_travels TYPE zt00i_traveltp.

    io_read->retrieve(
      EXPORTING
        iv_node                 = is_ctx-node_key
        it_key                  = it_key
      IMPORTING
        eo_message              = eo_message
        et_data                 = lt_travels
        et_failed_key           = et_failed_key ).

    IF eo_message IS NOT BOUND.
      eo_message = /bobf/cl_frw_message_factory=>create_container( ).
    ENDIF.

    LOOP AT lt_travels REFERENCE INTO DATA(lr_travel).
      IF lr_travel->status = 'C'.
        DATA ls_origin TYPE /bobf/s_frw_location.
        ls_origin-node_key = is_ctx-node_key.
        ls_origin-key = lr_travel->key.
        ls_origin-bo_key = is_ctx-bo_key.

        DATA(lo_message) = NEW cm_devs4d435(
          textid             = cm_devs4d435=>already_cancelled
          severity           = cm_devs4d435=>co_severity_error
          ms_origin_location = ls_origin
          travelnumber       = lr_travel->travelnumber ).

        eo_message->add_cm( lo_message ).
        CONTINUE.
      ENDIF.

      lr_travel->status = 'C'.

      io_modify->update(
        EXPORTING
          iv_node = is_ctx-node_key
          iv_key  = lr_travel->key
          is_data = lr_travel ).

      lo_message = NEW cm_devs4d435(
        textid       = cm_devs4d435=>cancel_success
        severity     = cm_devs4d435=>co_severity_success
        travelnumber = lr_travel->travelnumber
        startdate    = lr_travel->startdate ).
      eo_message->add_cm( lo_message ).
    ENDLOOP.

  ENDMETHOD.


ENDCLASS.
