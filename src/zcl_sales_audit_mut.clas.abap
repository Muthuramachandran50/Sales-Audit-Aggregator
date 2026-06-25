CLASS zcl_sales_audit_mut DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_sales_audit_mut IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  SELECT
*    vbeln,
*    erdat,
*    amountinr AS amount,
*    CASE
*      WHEN amountinr IS NOT NULL
*      THEN 'Local'
*    END AS Market_Type
*FROM zi_domes_sales_mut
*INTO TABLE @DATA(lt_domestic).
*
*out->write( lt_domestic ).
*
*    select
*    vbeln,
*    erdat,
*    amountusd AS amount,
*    case
*        when amountusd is not null
*        then 'International'
*        end as Market_Type
*    from zi_exp_sales_mut into table @data(lt_export).
*
* out->write( lt_export ).

SELECT
    vbeln,
    erdat,
    amountinr AS amount,
    CASE
      WHEN amountinr IS NOT NULL
      THEN 'Local'
    END AS Market_Type
FROM zi_domes_sales_mut
UNION ALL
 select
    vbeln,
    erdat,
    amountusd AS amount,
    case
        when amountusd is not null
        then 'International'
        end as Market_Type
    from zi_exp_sales_mut
 into table @data(lt_final_audit).
 out->write( lt_final_audit ).


  ENDMETHOD.

ENDCLASS.
