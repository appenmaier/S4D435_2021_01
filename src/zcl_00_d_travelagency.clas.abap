CLASS zcl_00_d_travelagency DEFINITION
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



CLASS zcl_00_d_travelagency IMPLEMENTATION.


  METHOD /bobf/if_frw_determination~execute.

    DATA lt_travels TYPE zt00i_traveltp.

    io_read->retrieve(
      EXPORTING
        iv_node                 = is_ctx-node_key
        it_key                  = it_key
      IMPORTING
        eo_message              = eo_message
        et_data                 = lt_travels
        et_failed_key           = et_failed_key ).

    LOOP AT lt_travels REFERENCE INTO DATA(lr_travel).
      lr_travel->travelagency = cl_s4d435_model=>get_agency_by_user( ).
      DATA(lt_changed_fields) = VALUE /bobf/t_frw_name( ( zif_00_i_traveltp_c=>sc_node_attribute-z00_i_traveltp-travelagency ) ).
      io_modify->update(
        EXPORTING
          iv_node           = is_ctx-node_key
          iv_key            = lr_travel->key
          is_data           = lr_travel
          it_changed_fields = lt_changed_fields ).
    ENDLOOP.


  ENDMETHOD.
ENDCLASS.
