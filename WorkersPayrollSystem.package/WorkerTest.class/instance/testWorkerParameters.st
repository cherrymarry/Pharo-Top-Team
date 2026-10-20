running
testWorkerParameters
    self assert: worker1 hourlyRate equals: 100.
    self assert: worker1 minHours equals: 40.
    self assert: worker2 hourlyRate equals: 150.
    self assert: worker2 minHours equals: 40.