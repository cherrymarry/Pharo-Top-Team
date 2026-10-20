accessing
weeklySalary
	| baseSalary |
	baseSalary := actualHours * hourlyRate.
	^ actualHours < minHours
		ifTrue: [ baseSalary * 0.75 ]
		ifFalse: [ baseSalary ]