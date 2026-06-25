CLASS zcl_insert_sales_mut DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_sales_mut IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data: lt_domestic type table of zdomes_sales_mut,
        lt_export TYPE TABLE of zexp_sales_mut.

   lt_domestic = VALUE #(

      ( vbeln = '100001'
        erdat = '20250601'
        amount_inr = '25000' )

      ( vbeln = '100002'
        erdat = '20250602'
        amount_inr = '40000' )

      ( vbeln = '100003'
        erdat = '20250603'
        amount_inr = '18000' )

      ( vbeln = '100004'
        erdat = '20250604'
        amount_inr = '52000' )

      ( vbeln = '100005'
        erdat = '20250605'
        amount_inr = '33000' )
  ).
  insert zdomes_sales_mut from table @lt_domestic.

  lt_export = VALUE #(

      ( vbeln = '200001'
        erdat = '20250601'
        amount_usd = '1200' )

      ( vbeln = '200002'
        erdat = '20250602'
        amount_usd = '850' )

      ( vbeln = '200003'
        erdat = '20250603'
        amount_usd = '1500' )

      ( vbeln = '200004'
        erdat = '20250604'
        amount_usd = '700' )

      ( vbeln = '200005'
        erdat = '20250605'
        amount_usd = '2300' )

    ).

    insert zexp_sales_mut from table @lt_export.

    out->write( 'Sales data inserted successfully' ).
  ENDMETHOD.
ENDCLASS.
