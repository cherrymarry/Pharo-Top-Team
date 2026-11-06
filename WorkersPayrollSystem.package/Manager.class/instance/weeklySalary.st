initialization
weeklySalary
	^ (hourlyRate * CompanyConstants standardMinHours) * (1 + (subordinatesCount * CompanyConstants managerBonusRate))