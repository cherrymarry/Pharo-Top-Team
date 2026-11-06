printing
printCategoryInfo: aClass
	"Друкує працівників лише визначеної категорії (наприклад, Programmer або Manager)"
	| categoryWorkers |
	categoryWorkers := workers select: [ :w | w isKindOf: aClass ].
	^ String streamContents: [ :stream |
		stream show: 'Категорія: '; show: aClass name; show: ' ('; show: categoryWorkers size printString; show: ')'; cr.
		categoryWorkers do: [ :w | stream show: w printString; cr ] ]