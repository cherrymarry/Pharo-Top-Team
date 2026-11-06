as yet unclassified
highestPaidWorker
	"Повертає найоплачуванішого працівника компанії"
	workers ifEmpty: [ ^ nil ].
	^ workers detectMax: [ :w | w weeklySalary ]