tests
testSelectPenalizedProgrammersNoMatches
	| perfectWorkers penalized |
	"Колекція лише з тими, хто відпрацював норму"
	perfectWorkers := OrderedCollection with: p1 with: m1.
	penalized := Worker selectPenalizedProgrammersIn: perfectWorkers.
	
	self assert: penalized isEmpty