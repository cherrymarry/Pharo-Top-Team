initialization
weeklySalary
	| baseSalary bonusPercent |
	baseSalary := 40 * hourlyRate.
	bonusPercent := 1 + (subordinatesCount * 0.01).
	^ baseSalary * bonusPercent