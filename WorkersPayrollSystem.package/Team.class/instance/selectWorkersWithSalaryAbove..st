accessing
selectWorkersWithSalaryAbove: aThreshold
	"Повертає нову колекцію працівників, зарплата яких перевищує aThreshold"
	^ workers select: [ :each | each weeklySalary > aThreshold ]