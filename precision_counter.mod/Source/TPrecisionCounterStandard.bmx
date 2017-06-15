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

Type TPrecisionCounterStandard Extends TPrecisionCounter

	Method MilliSecs:Double()
		Return Double (brl.blitz.MilliSecs())
	EndMethod

	Method Ticks:Long()
		Return 0:Long
	End Method

EndType
