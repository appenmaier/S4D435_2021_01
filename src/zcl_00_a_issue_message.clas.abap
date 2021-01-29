CLASS zcl_00_a_issue_message DEFINITION
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



CLASS zcl_00_a_issue_message IMPLEMENTATION.


  METHOD /bobf/if_frw_action~execute.
    IF eo_message IS INITIAL.
      eo_message = /bobf/cl_frw_message_factory=>create_container( ).
    ENDIF.

    DATA(lo_message) = NEW zcm_00_travel(
            textid   = zcm_00_travel=>zcm_00_travel
            severity = zcm_00_travel=>co_severity_success ).

    eo_message->add_cm( lo_message ).

    ev_static_action_failed = abap_false.
  ENDMETHOD.


ENDCLASS.
