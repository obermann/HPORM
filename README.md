# HPORM
Hypertext PostScript 3 Operators Reference Manual

As everbody knows PostScript language is defined in
[PLRM.pdf](https://www.adobe.com/content/dam/acom/en/devnet/actionscript/articles/PLRM.pdf)
(PostScript Language Reference Manual). It is a big and exhaustive document, a book actually. 
I felt the lack of a usable online/interactive help for PS. So, here you are - 
PDFMarks that may make PLRM.pdf Chapter 8 "Operators" hypertextual and bookmarked.

## Legal Notice
Adobe let freely download versions PLRM.pdf for many years, but it has clear notice:
> © 1985–1999 Adobe Systems Incorporated. All rights reserved.
> 
> NOTICE: All information contained herein is the property of Adobe Systems Incorporated.
> 
> No part of this publication (whether in hardcopy or electronic form) may be reproduced
> or transmitted, in any form or by any means, electronic, mechanical, photocopying,
> recording, or otherwise, without the prior written consent of the publisher.
> 

So until Adobe will ever give me express permission I cannot make available the source PLRM.pdf nor possibly augmented with PDFMarks HPORM.pdf.
I am not responsible for how anyone would use these PDFMarks. They are under the MIT licence. The content of the **maker** directory is under the GPL licence.

## "Building"
Get:
* [PLRM.pdf](https://www.adobe.com/content/dam/acom/en/devnet/actionscript/articles/PLRM.pdf) -
  place it in the working dir. At least read a second page of it - the book must be 
  "PostScript language reference manual / Adobe Systems Incorporated. - 3rd ed." of year 1999.
* [GhostScript](https://www.ghostscript.com/) interpreter (tested with version 9.15) -
  install it and if installed gswin32c.exe is not in PATH - 
  you may just copy it from c:\Program Files\gs\gs9.15\bin\ to the working dir.

Run **markingALLstep1.bat** (produces interim PORM & C pdfs) and then **markingALLstep2.bat** (produces **HPORM.pdf**).

If you care to have original PLRM.pdf just with added hyperlinks to the operators reference run only **markingMIN.bat** instead.

