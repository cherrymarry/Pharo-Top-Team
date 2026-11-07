tests
testSelectPenalizedProgrammersExceptWhenNoProgrammers
	| teamOnlyManagers |
	teamOnlyManagers := Team new.
	teamOnlyManagers addWorker: m1.
	self assert: teamOnlyManagers selectPenalizedProgrammers isEmpty