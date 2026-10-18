as yet unclassified
selectWorkersWithSalaryAbove: aThreshold in: aCollection
    "Повертає нову колекцію працівників, зарплата яких перевищує aThreshold"
    ^ aCollection select: [ :each | each weeklySalary > aThreshold ]