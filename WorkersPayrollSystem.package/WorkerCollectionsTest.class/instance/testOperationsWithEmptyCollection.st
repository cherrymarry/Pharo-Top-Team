tests
testOperationsWithEmptyCollection
	| emptyCollection |
	emptyCollection := OrderedCollection new.
	
	"1. Найоплачуваніший у порожній колекції повертає nil"
	self assert: (Worker highestPaidIn: emptyCollection) isNil.
	
	"2. Фільтрація порожньої колекції повертає порожню колекцію"
	self assert: (Worker selectWorkersWithSalaryAbove: 1000 in: emptyCollection) isEmpty.
	self assert: (Worker selectPenalizedProgrammersIn: emptyCollection) isEmpty