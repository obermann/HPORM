REM -dNOSAFER -dWRITESYSTEMDICT -dDELAYBIND -dNODISPLAY -dBATCH -dNOPAUSE -sFile=%1 marker.ps

gswin32c.exe -dDELAYBIND -dNODISPLAY -dBATCH -dNOPAUSE -sFile=PLRM.pdf -dFirstPage=522 -dLastPage=737 marker.ps

pause
