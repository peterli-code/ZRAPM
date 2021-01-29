CLASS zcl_rap_eml_plyh DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_RAP_EML_PLYH IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*    " step 1 - READ
*    READ ENTITIES OF ZI_RAP_Travel_plyh
*      ENTITY travel
*        FROM VALUE #( ( TravelUUID = '004A05A09DA9D65217000C0262372D9B' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

*    " step 2 - READ with Fields
*    READ ENTITIES OF ZI_RAP_Travel_plyh
*      ENTITY travel
*        FIELDS ( AgencyID CustomerID )
*      WITH VALUE #( ( TravelUUID = '004A05A09DA9D65217000C0262372D9B' ) )
*      RESULT DATA(travels).
*    out->write( travels ).

*    " step 3 - READ with All Fields
*    READ ENTITIES OF ZI_RAP_Travel_plyh
*      ENTITY travel
*        ALL FIELDS
*      WITH VALUE #( ( TravelUUID = '004A05A09DA9D65217000C0262372D9B' ) )
*      RESULT DATA(travels).
*
*    out->write( travels ).

*    " step 4 - READ By Association
*    READ ENTITIES OF ZI_RAP_Travel_plyh
*      ENTITY travel BY \_Booking
*        ALL FIELDS WITH VALUE #( ( TravelUUID = '004A05A09DA9D65217000C0262372D9B' ) )
*      RESULT DATA(bookings).
*
*    out->write( bookings ).

*     " step 5 - Unsuccessful READ
*     READ ENTITIES OF ZI_RAP_Travel_plyh
*       ENTITY travel
*         ALL FIELDS WITH VALUE #( ( TravelUUID = '11111111111111111111111111111111' ) )
*       RESULT DATA(travels)
*       FAILED DATA(failed)
*       REPORTED DATA(reported).
*
*     out->write( travels ).
*     out->write( failed ).    " complex structures not supported by the console output
*     out->write( reported ).  " complex structures not supported by the console output

*     " step 6a - MODIFY Update
*     MODIFY ENTITIES OF ZI_RAP_Travel_plyh
*       ENTITY travel
*         UPDATE
*           SET FIELDS WITH VALUE
*             #( ( TravelUUID  = '004A05A09DA9D65217000C0262372D9B'
*                  Description = 'PLYH likes RAP@openSAP' ) )
*
*      FAILED DATA(failed)
*      REPORTED DATA(reported).
*
*
*
*      " step 6b - Commit Entities
*     COMMIT ENTITIES
*       RESPONSE OF ZI_RAP_Travel_plyh
*       FAILED     DATA(failed_commit)
*       REPORTED   DATA(reported_commit).
*
*     out->write( 'Update done' ).

*    " step 7 - MODIFY Create
*    MODIFY ENTITIES OF ZI_RAP_Travel_plyh
*      ENTITY travel
*        CREATE
*          SET FIELDS WITH VALUE
*            #( ( %cid        = 'MyContentID_1'
*                 AgencyID    = '70012'
*                 CustomerID  = '14'
*                 BeginDate   = cl_abap_context_info=>get_system_date( )
*                 EndDate     = cl_abap_context_info=>get_system_date( ) + 10
*                 Description = 'PLYH likes RAP@openSAP' ) )
*
*     MAPPED DATA(mapped)
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    out->write( mapped-travel ).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_plyh
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'PLYH Create done' ).

*    " step 8 - MODIFY Delete
*    MODIFY ENTITIES OF ZI_RAP_Travel_plyh
*      ENTITY travel
*        DELETE FROM
*          VALUE
*            #( ( TravelUUID  = '02160C5207821EDB87A277D5D623E42F' ) )
*
*     FAILED DATA(failed)
*     REPORTED DATA(reported).
*
*    COMMIT ENTITIES
*      RESPONSE OF ZI_RAP_Travel_plyh
*      FAILED     DATA(failed_commit)
*      REPORTED   DATA(reported_commit).
*
*    out->write( 'Delete done' ).
*
*
  ENDMETHOD.
ENDCLASS.
