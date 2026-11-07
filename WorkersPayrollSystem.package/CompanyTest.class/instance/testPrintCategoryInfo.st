tests
testPrintCategoryInfo
	| report |
	report := company printCategoryInfo: Programmer.
	self assert: (report includesSubstring: 'Programmer').
	self assert: (report includesSubstring: '2')