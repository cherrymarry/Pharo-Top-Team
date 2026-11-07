adding
areAllProgrammersMeetingNorm
	| programmers |
	programmers := workers select: [ :w | w isKindOf: Programmer ].
	^ programmers allSatisfy: [ :p | p actualHours >= p minHours ]