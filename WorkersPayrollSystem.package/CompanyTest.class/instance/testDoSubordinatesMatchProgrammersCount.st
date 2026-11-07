tests
testDoSubordinatesMatchProgrammersCount
"У manager1 всього 2 підлеглі, і в компанії 2 програмісти"
	self assert: company doSubordinatesMatchProgrammersCount.
	
	manager1 subordinatesCount: 5.
	self deny: company doSubordinatesMatchProgrammersCount