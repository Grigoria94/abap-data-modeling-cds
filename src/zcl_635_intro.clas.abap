CLASS zcl_635_intro DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_635_intro IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA var TYPE /LRN/S4D430_IND.

   SELECT FROM /dmo/agency_d
     FIELDS *
       INTO TABLE @DATA(result).

   out->write( result ).

  ENDMETHOD.
ENDCLASS.
