tests
testHighestPaidWithTie
	| team2 p3 |
	team2 := Team new.
	p3 := Programmer surname: 'Сидоренко' hourlyRate: 300 minHours: 40 actualHours: 45.
	team2 addWorker: p1.
	team2 addWorker: p3.
	"Має повернути першого знайденого"
	self assert: (team2 highestPaid = p1 or: [ team2 highestPaid = p3 ])