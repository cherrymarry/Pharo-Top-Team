as yet unclassified
loadWorkersFromCSVFile: aFilename
	| collection lines |
	collection := OrderedCollection new.
	lines := aFilename asFileReference contents lines.
	lines do: [ :line |
		| parts className w |
		parts := line substrings: ';'.
		parts size >= 5 ifTrue: [ 
			className := parts at: 1.
			className = 'Programmer' ifTrue: [ w := Programmer new ].
			className = 'Manager' ifTrue: [ w := Manager new ].
			className = 'Worker' ifTrue: [ w := Worker new ].
			w surname: (parts at: 2).
			w experience: (parts at: 3) asInteger.
			w hourlyRate: (parts at: 4) asNumber.
			w minHours: (parts at: 5) asNumber.
			collection add: w ] ].
	^ collection