 LMEREPI02 include na ENHANCEMENT  

ENHANCEMENT 1  ZMM_ME2L_EK_ALAN.    "active version
*
********************
*  << add begin rbozkurt 27.07.2017
  BREAK xmbis.
  DATA lv_land1 TYPE lfa1-land1.
  SELECT SINGLE LZONE land1
    INTO (re_outtab_purchdoc-zzLZONE,lv_land1)
    FROM lfa1
    WHERE lifnr = im_ekko-lifnr.
    IF sy-subrc = 0.
      SELECT SINGLE vtext
        INTO re_outtab_purchdoc-zzLZONE_t
        FROM tzont
        WHERE ZONE1 = re_outtab_purchdoc-zzLZONE
          AND land1 = lv_land1
          AND spras = sy-langu.
    ENDIF.
*  << add end rbozkurt 27.07.2017
********************
ENDENHANCEMENT. 
