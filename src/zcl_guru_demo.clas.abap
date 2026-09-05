CLASS zcl_guru_demo DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_guru_demo IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    select * from I_EXCHANGERATERAWDATA into table @data(itab) up TO 2 rows.

    out->write(
      EXPORTING
        data   = itab
*        name   =
*      RECEIVING
*        output =
    ).

  ENDMETHOD.
ENDCLASS.
