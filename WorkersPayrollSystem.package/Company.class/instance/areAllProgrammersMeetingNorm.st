as yet unclassified
areAllProgrammersMeetingNorm
	"Перевіряє, чи всі програмісти компанії виконують свою норму годин"
	| programmers |
	programmers := workers select: [ :w | w isKindOf: Programmer ].
	^ programmers allSatisfy: [ :p | p actualHours >= p minHours ]