as yet unclassified
surname: aString hourlyRate: aNumber minHours: aMinHours subordinatesCount: aSubsCount
	"Фабричний конструктор для менеджера з повною ініціалізацією"
	^ self new
		surname: aString;
		hourlyRate: aNumber;
		minHours: aMinHours;
		subordinatesCount: aSubsCount;
		yourself