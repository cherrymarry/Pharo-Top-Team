as yet unclassified
highestPaidIn: aCollection
    "Повертає працівника з найвищою тижневою зарплатою"
    ^ aCollection detectMax: [ :each | each weeklySalary ]