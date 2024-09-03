*&---------------------------------------------------------------------*
*& Report ZTEST016
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest099.

"DEFINE TABLE PENAMPUNG UNTUK TABLE ALV DARI REPORT YANG AKAN KITA AMBIL, PASTIKAN TYPE DATA NYA SAMA DENGAN
DATA : t_data TYPE STANDARD TABLE OF zmmst0009 WITH HEADER LINE.
DATA : t_selection TYPE STANDARD TABLE OF rsparams WITH HEADER LINE.

BREAK-POINT.

"CALL PROGRAM YANG TABLE ALV NYA MAU KITA AMBIL, SETELAH FM INI JALAN, MAKA NANTI T_DATA ITU AKAN BERISI DATA DARI PROGRAM YANG KITA PANGGIL TADI
CALL FUNCTION 'ZFM_GET_TABLE_ALV_FROM_REPORT'
  EXPORTING
    i_pname       = 'ZMMR0001'
    i_submit_mode = '1'
  TABLES
    t_data        = t_data
    t_rsparams    = t_selection.

*MESSAGE 'testing' type 'E' DISPLAY LIKE 'S'.

BREAK-POINT.
