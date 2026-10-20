as yet unclassified
selectPenalizedProgrammersIn: aCollection
    "Повертає нову колекцію програмістів, які отримали штраф за недопрацювання"
    ^ aCollection select: [ :each | 
        (each isKindOf: Programmer) and: [ each actualHours < each minHours ] ]