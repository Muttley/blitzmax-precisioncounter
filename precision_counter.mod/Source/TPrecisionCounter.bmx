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

Private

Global g_precisionCounter:TPrecisionCounter = TPrecisionCounter.Create()

Public

Function PrecisionCounterAvailable:Int()
	Return g_precisionCounter.IsPrecision()
EndFunction

Function PrecisionMillisecs:Double()
	Return g_precisionCounter.MilliSecs()
EndFunction

Function PrecisionTicks:Long()
	Return g_precisionCounter.Ticks()
EndFunction

Type TPrecisionCounter

	Field _precision:Int

	Function Create:TPrecisionCounter()
		' TODO: Need to find out how to utilise precision counters on
		' MacOS/Linux, for now they just use the normal BlitzMax Millisecs()
		' command.

		Local timer:TPrecisionCounter

		?Win32
			Local frequency:Long

			If QueryPerformanceFrequency(frequency)
				timer:TPrecisionCounter = New TPrecisionCounterWin32
				timer._precision = True
			Else
		?
				timer:TPrecisionCounter = New TPrecisionCounterStandard
				timer._precision = False
		?Win32
			EndIf
		?

		Return timer
	EndFunction

	Method IsPrecision:Int()
		Return _precision
	EndMethod

	Method MilliSecs:Double() Abstract

	Method Ticks:Long() Abstract
EndType
