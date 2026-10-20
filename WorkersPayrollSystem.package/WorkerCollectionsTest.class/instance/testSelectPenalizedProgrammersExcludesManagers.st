tests
testSelectPenalizedProgrammersExcludesManagers
	| managersCollection penalized |
	managersCollection := OrderedCollection with: m1.
	penalized := Worker selectPenalizedProgrammersIn: managersCollection.
	
	"Переконуємося, що логіка перевірки типу (isKindOf: Programmer) працює коректно"
	self assert: penalized isEmpty