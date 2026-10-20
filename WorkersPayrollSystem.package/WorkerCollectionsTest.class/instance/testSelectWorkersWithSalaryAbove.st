tests
testSelectWorkersWithSalaryAbove
    | highEarners |
    highEarners := Worker selectWorkersWithSalaryAbove: 3000 in: workers.
    self assert: highEarners size equals: 2.
    self assert: (highEarners includes: p1).
    self assert: (highEarners includes: m1)