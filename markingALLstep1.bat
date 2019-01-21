REM http://ghostscript.com/doc/current/Ps2pdf.htm  gs_pdfwr.ps
REM -dCompatibilityLevel=1.x -dUseCropBox=true -dCompressFonts=false -dCompressPages=false -dFastWebView=true

REM -dFirstPage=519 -dLastPage=737 -sOutputFile=PORM.pdf pdfmarksNOOP.ps PLRM.pdf
REM -o PORM.pdf --saved-pages="print: 519-737, 2" pdfmarksNOOP.ps PLRM.pdf

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
-dFirstPage=519 -dLastPage=737 -sOutputFile=PORM.pdf pdfmarksNOOP.ps PLRM.pdf

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
-dFirstPage=2 -dLastPage=2 -sOutputFile=C.pdf pdfmarksNOOP.ps PLRM.pdf

pause
