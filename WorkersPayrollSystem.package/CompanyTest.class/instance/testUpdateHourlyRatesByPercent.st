tests
testUpdateHourlyRatesByPercent
"Перевіряємо підняття ставок усім працівникам на 10%"
	company updateHourlyRatesByPercent: 10.
	self assert: programmer1 hourlyRate equals: 330.0