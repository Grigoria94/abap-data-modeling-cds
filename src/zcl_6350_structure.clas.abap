CLASS zcl_6350_structure DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .

    " Εδώ αφαιρούμε ή σχολιάζουμε τα TYPES (st_address κτλ),
    " γιατί τώρα θα χρησιμοποιούμε τις Z6350S_... από το Dictionary.

ENDCLASS.

CLASS zcl_6350_structure IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

* Task 1: Χρήση της απλής δομής
**********************************************************************
    DATA address TYPE z6350s_address.

    address-street      = 'Dietmar-Hopp-Allee 16'.
    address-postal_code = '69190'.
    address-city        = 'Walldorf'.
    address-country     = 'DE'.

    out->write( 'Task 1: Address data' ).
    out->write( |\n| ).
    out->write( address ).
out->write( |-----------------------| ).
out->write( |\n| ).
* Task 2: Χρήση της ένθετης (Nested) δομής
**********************************************************************
    " Εδώ χρησιμοποιούμε τη δομή Z6350S_PERSON που ορίσαμε στο Dictionary
    DATA person TYPE z6350s_person.

    person-name-first_name = 'George'.
    person-name-last_name  = 'Papadopoulos'.
    person-address         = address. " Μπορούμε να εκχωρήσουμε όλη τη δομή μαζί!

    out->write( 'Task 2: Person data' ).
    out->write( |\n| ).
    out->write( person ).
out->write( |-----------------------| ).
out->write( |\n| ).
* Task 3: Χρήση Named Includes
**********************************************************************
    " Προσοχή: Εδώ χρησιμοποιούμε τη Z6350S_PERSON_INC (που έχει τα INCLUDE)
    DATA person2 TYPE z6350s_person_inc.

    " Λόγω του INCLUDE, μπορούμε να γράψουμε απευθείας στα πεδία:
    person2-first_name  = 'Dictionary'.
    person2-last_name   = 'ABAP'.
    person2-street      = 'Dietmar-Hopp-Allee 16'.

    " Αλλά και με τον παλιό τρόπο (λόγω Named Include):
    person2-address-city = 'Walldorf'.

    out->write( 'Task 3: Person with Includes' ).
    out->write( |\n| ).
    out->write( person2 ).
out->write( |-----------------------| ).
out->write( |\n| ).
  ENDMETHOD.
ENDCLASS.
