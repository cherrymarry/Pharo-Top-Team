running
testCreation
    | newWorker |
    newWorker := Worker new surname: 'Test'; experience: 1; hourlyRate: 80; minHours: 20.
    self deny: newWorker isNil.
    self assert: newWorker surname equals: 'Test'.