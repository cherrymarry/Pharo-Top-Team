tests
testWeeklySalaryFractionalRate
	| pFractional |
	pFractional := Programmer new
		hourlyRate: 15.5;
		minHours: 40;
		actualHours: 20.

	self assert: pFractional weeklySalary equals: 232.5