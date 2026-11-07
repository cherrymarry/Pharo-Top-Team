printing
printCategoryInfo: aClass
	"Друкує працівників лише визначеної категорії (наприклад, Programmer або Manager)"
	| categoryWorkers |
	categoryWorkers := workers select: [ :w | w isKindOf: aClass ].
	^ String streamContents: [ :stream |
		stream nextPutAll: 'Категорія: '; nextPutAll: aClass name; nextPutAll: ' ('; nextPutAll: categoryWorkers size printString; nextPutAll: ')'; cr.
		categoryWorkers do: [ :w | stream nextPutAll: w printString; cr ] ]