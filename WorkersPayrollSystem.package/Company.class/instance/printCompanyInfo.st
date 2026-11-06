printing
printCompanyInfo
	"Повертає текстовий звіт про компанію та її працівників"
	^ String streamContents: [ :stream |
		stream show: 'Компанія: '; show: name; cr.
		stream show: 'Всього працівників: '; show: workers size printString; cr.
		stream show: '----------------------------------------'; cr.
		workers do: [ :w | stream show: w printString; cr ] ]