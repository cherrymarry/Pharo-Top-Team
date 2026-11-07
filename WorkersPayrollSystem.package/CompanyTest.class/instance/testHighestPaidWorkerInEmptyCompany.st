tests
testHighestPaidWorkerInEmptyCompany
	| emptyCompany |
	emptyCompany := Company new.
	self assert: emptyCompany highestPaidWorker isNil