tests
testWeeklySalaryNegativeSubordinates
	| mNegative |
	mNegative := Manager new
		hourlyRate: 100;
		subordinatesCount: -5.

	self assert: mNegative subordinatesCount equals: -5