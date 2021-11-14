{ CALL db_test.sp_sel_list_active_client() }
{ CALL db_test.sp_sel_list_products_with_stock() }


{ CALL db_test.sp_sel_sale_by_id(:p_id) }
{ CALL db_test.sp_sel_sale_detail_by_id_sale(:p_sale_id)}

{ CALL db_test.sp_ins_sale(:p_fecha,:p_descuento,:p_iva,:p_total) }
{ CALL db_test.sp_ins_sale_detail(:p_sale_id,:p_product_id,:p_amount,:p_subtotal) }
