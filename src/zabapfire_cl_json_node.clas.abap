class ZABAPFIRE_CL_JSON_NODE definition
  public
  final
  create public .

public section.

  types TY_NODE type ref to ZABAPFIRE_CL_JSON_NODE .
  types:
    ty_nodes TYPE SORTED TABLE OF ty_node
        WITH UNIQUE DEFAULT KEY .

  methods CONSTRUCTOR
    importing
      !NAME type STRING optional
      !VALUE type STRING optional
      !ARRAY type ABAP_BOOL optional
    raising
      ZCX_ABAPFIRE_JSON .
  methods GET_NAME
    returning
      value(NAME) type STRING .
  methods GET_VALUE
    returning
      value(VALUE) type STRING .
  methods ADD_CHILD
    importing
      !CHILD type ref to ZABAPFIRE_CL_JSON_NODE .
  methods GET_CHILDREN
    returning
      value(CHILDREN) type TY_NODES .
protected section.
private section.

  data MV_NAME type STRING .
  data MV_VALUE type STRING .
  data MV_ARRAY type ABAP_BOOL .
  data MT_CHILDREN type TY_NODES .
ENDCLASS.



CLASS ZABAPFIRE_CL_JSON_NODE IMPLEMENTATION.


  METHOD add_child.

    INSERT child INTO TABLE mt_children.

  ENDMETHOD.


  METHOD constructor.

    mv_name = name.
    mv_value = value.
    mv_array = array.

  ENDMETHOD.


  METHOD get_children.

    children = mt_children.

  ENDMETHOD.


  METHOD get_name.

    name = mv_name.

  ENDMETHOD.


  METHOD get_value.

    value = mv_value.

  ENDMETHOD.
ENDCLASS.
