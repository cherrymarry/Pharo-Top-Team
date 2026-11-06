as yet unclassified
surname: aString hourlyRate: aNumber minHours: aHoursCount
	"Фабричний конструктор для створення базового працівника"
	^ self new
		surname: aString;
		hourlyRate: aNumber;
		minHours: aHoursCount;
		yourself