tests
testSelectWorkersWithSalaryAbove
	| highEarners |
	highEarners := team selectWorkersWithSalaryAbove: 12000.
	self assert: (highEarners includes: p1).
	self assert: (highEarners includes: m1).
	self deny: (highEarners includes: p2)