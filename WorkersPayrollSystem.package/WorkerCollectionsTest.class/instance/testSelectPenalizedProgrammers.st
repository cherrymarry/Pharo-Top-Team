tests
testSelectPenalizedProgrammers
	| penalized |
	penalized := team selectPenalizedProgrammers.
	self assert: penalized size equals: 1.
	self assert: penalized first equals: p2