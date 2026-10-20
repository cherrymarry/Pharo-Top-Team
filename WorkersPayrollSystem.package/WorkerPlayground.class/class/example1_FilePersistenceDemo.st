as yet unclassified
example1_FilePersistenceDemo
	<script>
	| workers loadedSTON loadedCSV |
	workers := OrderedCollection new.
	workers add: (Programmer new surname: 'Коваленко'; experience: 2; hourlyRate: 300; minHours: 40; actualHours: 45).
	workers add: (Manager new surname: 'Петренко'; experience: 8; hourlyRate: 400; minHours: 40; subordinatesCount: 10).

	self saveWorkers: workers toSTONFile: 'workers_data.ston'.
	loadedSTON := self loadWorkersFromSTONFile: 'workers_data.ston'.

	self saveWorkers: workers toCSVFile: 'workers_data.csv'.
	loadedCSV := self loadWorkersFromCSVFile: 'workers_data.csv'.

	UIManager default inform: 'Файли створено та прочитано! Зчитано об''єктів: ', loadedSTON size asString.