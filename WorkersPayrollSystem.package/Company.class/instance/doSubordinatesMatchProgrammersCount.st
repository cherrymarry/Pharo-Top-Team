as yet unclassified
doSubordinatesMatchProgrammersCount
	"Перевіряє, чи збігається сумарна кількість підлеглих у менеджерів із кількістю програмістів"
	| programmers managers totalSubordinates |
	programmers := workers select: [ :w | w isKindOf: Programmer ].
	managers := workers select: [ :w | w isKindOf: Manager ].
	
	totalSubordinates := managers sum: [ :m | m subordinatesCount ] ifEmpty: [ 0 ].
	^ totalSubordinates = programmers size