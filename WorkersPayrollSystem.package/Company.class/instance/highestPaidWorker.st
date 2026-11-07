adding
highestPaidWorker
	workers ifEmpty: [ ^ nil ].
	^ workers detectMax: [ :w | w weeklySalary ]