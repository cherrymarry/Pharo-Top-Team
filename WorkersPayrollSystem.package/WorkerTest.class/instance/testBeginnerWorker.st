running
testBeginnerWorker
    | beginner |
    beginner := Worker new surname: 'Brown'; experience: 0; hourlyRate: 90; minHours: 40.
    self assert: beginner experience equals: 0.
    self assert: beginner weeklySalary equals: 3600.