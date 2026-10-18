tests
testSelectPenalizedProgrammers
    | penalized |
    penalized := Worker selectPenalizedProgrammersIn: workers.
    self assert: penalized size equals: 1.
    self assert: (penalized includes: p2)