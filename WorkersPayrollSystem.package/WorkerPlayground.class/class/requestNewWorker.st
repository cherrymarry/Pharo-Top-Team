as yet unclassified
requestNewWorker
	| typeChoice surname exp rate minHours w |
	typeChoice := UIManager default 
		chooseFrom: #('Програміст' 'Керівник' 'Звичайний працівник') 
		title: 'Оберіть тип нового працівника:'.
	typeChoice = 0 ifTrue: [ ^ nil ].

	surname := UIManager default request: 'Введіть прізвище працівника:' initialAnswer: 'Шевченко'.
	(surname isNil or: [ surname isEmpty ]) ifTrue: [ ^ nil ].

	exp := (UIManager default request: 'Введіть стаж (років):' initialAnswer: '3') asInteger.
	rate := (UIManager default request: 'Введіть оплату за годину (грн):' initialAnswer: '250') asNumber.
	minHours := (UIManager default request: 'Введіть норму годин на тиждень:' initialAnswer: '40') asNumber.

	typeChoice = 1 ifTrue: [ 
		| actualHours |
		actualHours := (UIManager default request: 'Введіть відпрацьовані години:' initialAnswer: '42') asNumber.
		w := Programmer new.
		w surname: surname; experience: exp; hourlyRate: rate; minHours: minHours; actualHours: actualHours ].

	typeChoice = 2 ifTrue: [ 
		| subs |
		subs := (UIManager default request: 'Введіть кількість підлеглих:' initialAnswer: '5') asInteger.
		w := Manager new.
		w surname: surname; experience: exp; hourlyRate: rate; minHours: minHours; subordinatesCount: subs ].

	typeChoice = 3 ifTrue: [ 
		w := Worker new.
		w surname: surname; experience: exp; hourlyRate: rate; minHours: minHours ].

	^ w