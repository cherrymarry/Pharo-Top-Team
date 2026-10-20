as yet unclassified
example2_DatabaseSimulationDemo
	<script>
	| db workers loadedDB |
	db := WorkerDatabase current.
	db clear.

	workers := OrderedCollection new.
	workers add: (Programmer new surname: 'Бойко'; experience: 1; hourlyRate: 250; minHours: 40; actualHours: 30).
	workers add: (Manager new surname: 'Мельник'; experience: 5; hourlyRate: 350; minHours: 40; subordinatesCount: 3).

	db saveCollection: workers.
	loadedDB := db loadCollection.

	UIManager default inform: 'База даних в пам''яті містить записів: ', loadedDB size asString.