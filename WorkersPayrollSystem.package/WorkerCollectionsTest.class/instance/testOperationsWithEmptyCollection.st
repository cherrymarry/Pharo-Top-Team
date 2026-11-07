tests
testOperationsWithEmptyCollection
	| emptyTeam |
	emptyTeam := Team new.
	self assert: emptyTeam highestPaid isNil.
	self assert: (emptyTeam selectWorkersWithSalaryAbove: 1000) isEmpty.
	self assert: emptyTeam selectPenalizedProgrammers isEmpty