printing
printCompanyInfo
	"Повертає текстовий звіт про компанію та її працівників"
	^ String streamContents: [ :stream |
		stream nextPutAll: 'Компанія: '; nextPutAll: name; cr.
		stream nextPutAll: 'Всього працівників: '; nextPutAll: workers size printString; cr.
		stream nextPutAll: '----------------------------------------'; cr.
		workers do: [ :w | stream nextPutAll: w printString; cr ] ]