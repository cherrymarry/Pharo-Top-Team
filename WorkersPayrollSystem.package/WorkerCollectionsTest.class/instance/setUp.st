running
setUp
	super setUp.
	team := Team new.
	p1 := Programmer surname: 'Коваленко' hourlyRate: 300 minHours: 40 actualHours: 45.
	p2 := Programmer surname: 'Бойко' hourlyRate: 200 minHours: 40 actualHours: 35.
	m1 := Manager surname: 'Петренко' hourlyRate: 400 minHours: 40 subordinatesCount: 2.
	
	team addWorker: p1.
	team addWorker: p2.
	team addWorker: m1