Type TPrecisionCounterTests Extends TTest

	Method Before() {before}
	EndMethod

	Method After() {after}
	EndMethod

	Method TestPrecisionCounterMillisecsAvailable() {test}
		Local shouldBeAvailable:Int = False
		?Win32
			shouldBeAvailable = True
		?

		assertEqualsI (shouldBeAvailable, PrecisionCounterAvailable())
	EndMethod

	Method TestPrecisionCounterTicksAvailable() {test}
		Local isWin32:Int = False
		?Win32
			isWin32 = True
			AssertTrue (PrecisionTicks() > 0:Long)
		?

		If Not isWin32
			AssertTrue (PrecisionTicks() = 0:Long)
		EndIf
	EndMethod

	Method CanGetMillisecs() {test}
		AssertTrue (PrecisionMillisecs() > 0.0:Double)
	EndMethod

EndType
