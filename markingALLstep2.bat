REM http://ghostscript.com/doc/current/Ps2pdf.htm  gs_pdfwr.ps
REM -dCompatibilityLevel=1.x -dUseCropBox=true -dCompressFonts=false -dCompressPages=false -dFastWebView=true

gswin32c.exe ^
-dBATCH -dNOPAUSE -sDEVICE=pdfwrite ^
-dPDFSETTINGS=/default ^
-dEmbedAllFonts=true ^
-dSubsetFonts=false ^
-dAutoRotatePages=/None ^
-dColorImageFilter=/FlateEncode ^
-dGrayImageFilter=/FlateEncode ^
-dFastWebView=false ^
-dCompatibilityLevel=1.2 ^
-sOutputFile=HPORM.pdf pdfmarksCROP.ps PORM.pdf C.pdf ^
pdfmarksINFO.ps pdfmarksDEST.ps pdfmarksANN.ps ^
PLRM.pdfmarksLNK1.ps PLRM.pdfmarksLNK2.ps PLRM.pdfmarksOUT.ps ^
pdfmarksOUT.ps pdfmarksPAGELABEL.ps pdfmarksVIEW.ps

pause
