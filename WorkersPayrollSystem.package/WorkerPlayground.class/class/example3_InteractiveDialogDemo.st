as yet unclassified
example3_InteractiveDialogDemo
	<script>
	| newWorker db |
	newWorker := self requestNewWorker.
	newWorker ifNotNil: [ 
		db := WorkerDatabase current.
		db addWorker: newWorker.
		UIManager default inform: 'Додано працівника: ', newWorker surname ].