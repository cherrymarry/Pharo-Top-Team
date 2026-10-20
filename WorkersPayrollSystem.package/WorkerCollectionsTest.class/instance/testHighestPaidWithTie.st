tests
testHighestPaidWithTie
	| sameSalaryWorkers topWorker p3 |
	"Створюємо другого програміста з такою ж зарплатою, як у менеджера m1 (8800 $)"
	p3 := Programmer new surname: 'Коваленко'; hourlyRate: 220; minHours: 40; actualHours: 40.
	
	sameSalaryWorkers := OrderedCollection with: p1 with: m1 with: p3.
	topWorker := Worker highestPaidIn: sameSalaryWorkers.
	
	"Перевіряємо, що повернувся один із них та його зарплата дійсно 8800"
	self assert: topWorker weeklySalary equals: 8800