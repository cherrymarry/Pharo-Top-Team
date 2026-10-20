tests
testComparison
	self assert: pOvertime > pExact.
	self assert: pExact > pPenalized.
	self assert: pPenalized > pZero