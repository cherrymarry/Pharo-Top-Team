running
setUp
	super setUp.
	company := Company new.
	company name: 'TechCorp'.
	
	programmer1 := Programmer surname: 'Коваленко' hourlyRate: 300 minHours: 40 actualHours: 45.
	programmer2 := Programmer surname: 'Бойко' hourlyRate: 200 minHours: 40 actualHours: 35.
	manager1 := Manager surname: 'Петренко' hourlyRate: 400 minHours: 40 subordinatesCount: 2.
	
	company addWorker: programmer1.
	company addWorker: programmer2.
	company addWorker: manager1