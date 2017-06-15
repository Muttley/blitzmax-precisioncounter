rem
'
' Copyright (c) 2007-2010 Paul Maskelyne <muttley@muttleyville.org>.

' All rights reserved. Use of this code is allowed under the
' Artistic License 2.0 terms, as specified in the LICENSE file
' distributed with this code, or available from
' http://www.opensource.org/licenses/artistic-license-2.0.php
'
endrem

?Win32
	Type TPrecisionCounterWin32 Extends TPrecisionCounter
		Field _frequency:Double
		Field _ticks:Long

		Method MilliSecs:Double()
			Local ticks:Long

			If QueryPerformanceCounter (ticks)
				Return (Double (ticks) * 1000.0:Double) / _frequency
			Else
				Return Null
			EndIf
		EndMethod

		Method New()
			Local freq:Long
			QueryPerformanceFrequency (freq)
			_frequency = Double (freq)
		EndMethod

		Method Ticks:Long()
			If QueryPerformanceCounter (_ticks)
				Return _ticks
			Else
				Return Null
			EndIf
		EndMethod
	EndType

	Extern "Win32"
		Function QueryPerformanceCounter (lpPerformanceCount:Long Var)
		Function QueryPerformanceFrequency (lpFrequency:Long Var)
	EndExtern
?
