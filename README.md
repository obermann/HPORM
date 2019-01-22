# HPORM
Hypertext PostScript 3 Operators Reference Manual

As everybody knows [PostScript language](https://en.wikipedia.org/wiki/PostScript) is defined in
[PLRM.pdf](https://www.adobe.com/content/dam/acom/en/devnet/actionscript/articles/PLRM.pdf)
(PostScript Language Reference Manual). It is a big and exhaustive document, a book actually. 
I felt the lack of a usable online/interactive help for PS. So, here you are - 
[pdfmarks](https://www.adobe.com/content/dam/acom/en/devnet/acrobat/pdfs/pdfmark_reference.pdf) 
that may make PLRM.pdf Chapter 8 "Operators" hypertextual and bookmarked.

## Legal Notice
Adobe let freely download versions of PLRM.pdf for many years, but it has a clear notice:
> © 1985–1999 Adobe Systems Incorporated. All rights reserved.
> 
> NOTICE: All information contained herein is the property of Adobe Systems Incorporated.
> 
> No part of this publication (whether in hardcopy or electronic form) may be reproduced
> or transmitted, in any form or by any means, electronic, mechanical, photocopying,
> recording, or otherwise, without the prior written consent of the publisher.
> 

So without express permission from Adobe the source PLRM.pdf nor possibly augmented with pdfmarks HPORM.pdf cannot be shared.

I am not responsible for how anyone would use these pdfmarks.
They are under the MIT license. The content of the **maker** directory is under the GPL license.

## Applying pdfmarks
Get:
* [PLRM.pdf](https://www.adobe.com/content/dam/acom/en/devnet/actionscript/articles/PLRM.pdf) -
  must be in the working dir. At least read a second page of it - the book must be 
  "PostScript language reference manual / Adobe Systems Incorporated. - 3rd ed." of a year 1999.
* [GhostScript](https://www.ghostscript.com/) PS interpreter -
  install it and if installed gswin32c.exe is not in PATH - 
  you may just copy it from c:\Program Files\gs\gs9.15\bin\ to the working dir.

1. **markingALLstep1.bat** should produce interim PORM & C pdfs
2. **markingALLstep2.bat** produces **HPORM.pdf**.
   IMPORTANT: such HPORM.pdf will have some hyperlinks to PLRM.pdf (from PLRM.pdfmarksLNK2.ps)!

Alternatively, to add hyperlinks to the operators reference in the original big PLRM.pdf only **markingMIN.bat** may be ran instead:
1. **markingMIN.bat** produces **HPLRM.pdf**.

Everything may be adapted to POSIX without problem.
Theoretically any PDF producing PS interpreter may be used instead of GhostScript.

## Interactive Help with PDF
### Example of [Notepad++](https://notepad-plus-plus.org/) with [SumatraPDF](https://www.sumatrapdfreader.org/)
SumatraPDF is the best fit for using PDF for interactive help, because it is free, small and fast.
Edit shortcuts.xml of Notepad++ and add to UserDefinedCommands:
```xml
<Command name="PS Help" 
Ctrl="no" Alt="no" Shift="no" Key="112"
>&quot;C:\Program Files\SumatraPDF\SumatraPDF.exe&quot; 
-reuse-instance 
-view &quot;continuous single page&quot; 
-zoom &quot;fit width&quot; 
-named-dest $(CURRENT_WORD) 
D:\HPORM.pdf
</Command>
```

http://docs.notepad-plus-plus.org/index.php/Editing_Configuration_Files

https://www.sumatrapdfreader.org/docs/Command-line-arguments.html

## Making pdfmarks
**maker** directory contains files that generate pdfmarks to **output** subdirectory. 
But pdfmarks in the root directory although so generated have not escaped a bit of human touch.
Generation is based on the PS interpreter output filtering by the font properties through the family of overridden *show* operators.
