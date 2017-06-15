Rem
'
' Copyright (c) 2017 Paul Maskelyne <muttley@muttleyville.org>.
'
' All rights reserved. Use of this code is allowed under the
' Artistic License 2.0 terms, as specified in the LICENSE file
' distributed with this code, or available from
' http://www.opensource.org/licenses/artistic-license-2.0.php
'
EndRem

SuperStrict

Rem
	bbdoc:muttley\precision_counter
EndRem
Module muttley.precision_counter

ModuleInfo "Name: muttley.precision_counter"
ModuleInfo "Version: 1.0.0"
ModuleInfo "License: Artistic License 2.0"
ModuleInfo "Author: Paul Maskelyne (Muttley)"
ModuleInfo "Copyright: (C) 2017 Paul Maskelyne"
ModuleInfo "E-Mail: muttley@muttleyville.org"
ModuleInfo "Website: http://www.muttleyville.org"

Include "Source/TPrecisionCounterStandard.bmx"
Include "Source/TPrecisionCounter.bmx"

?Win32
	Include "Source/TPrecisionCounterWin32.bmx"
?
