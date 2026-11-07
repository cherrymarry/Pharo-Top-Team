tests
testHighestPaidWorker
"Перевіряємо, що найоплачуванішим є той, у кого найбільша тижнева ЗП"
	| highest |
	highest := company highestPaidWorker.
	self assert: highest surname equals: 'Петренко'