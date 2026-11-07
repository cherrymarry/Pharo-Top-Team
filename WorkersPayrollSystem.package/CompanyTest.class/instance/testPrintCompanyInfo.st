tests
testPrintCompanyInfo
	| report |
	report := company printCompanyInfo.
	self assert: (report includesSubstring: 'TechCorp').
	self assert: (report includesSubstring: '3')