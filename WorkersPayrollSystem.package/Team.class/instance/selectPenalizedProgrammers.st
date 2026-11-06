accessing
selectPenalizedProgrammers
	"Повертає колекцію програмістів колективу, які отримали штраф за недопрацювання"
	^ workers select: [ :each | 
		(each isKindOf: Programmer) and: [ each actualHours < each minHours ] ]