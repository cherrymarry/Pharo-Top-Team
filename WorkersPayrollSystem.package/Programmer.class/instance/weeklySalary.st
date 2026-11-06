accessing
weeklySalary
	actualHours < CompanyConstants standardMinHours
		ifTrue: [ ^ actualHours * hourlyRate * CompanyConstants penaltyRate ]
		ifFalse: [ ^ actualHours * hourlyRate ]