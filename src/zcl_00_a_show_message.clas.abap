CLASS zcl_00_a_show_message DEFINITION
  PUBLIC
  INHERITING FROM /bobf/cl_lib_a_supercl_simple
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS /bobf/if_frw_action~execute REDEFINITION.

  PROTECTED SECTION.

  PRIVATE SECTION.

ENDCLASS.

CLASS zcl_00_a_show_message IMPLEMENTATION.

  METHOD /bobf/if_frw_action~execute.

    IF eo_message IS INITIAL.
      eo_message = /bobf/cl_frw_message_factory=>create_container( ).
    ENDIF.

    DATA(lo_message) = NEW zcl_00_test_message(
      textid   = zcl_00_test_message=>test_message
      severity = zcl_00_test_message=>co_severity_info ).

    eo_message->add_cm(
      EXPORTING
        io_message = lo_message ).

    ev_static_action_failed = ''.

  ENDMETHOD.

ENDCLASS.
