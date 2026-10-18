tests
testHighestPaidIn
    | topWorker |
    topWorker := Worker highestPaidIn: workers.
    self assert: topWorker equals: m1