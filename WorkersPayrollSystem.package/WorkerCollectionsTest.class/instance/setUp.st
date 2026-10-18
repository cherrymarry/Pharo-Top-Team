running
setUp
    super setUp.
    p1 := Programmer new surname: 'Гаврилів'; hourlyRate: 100; minHours: 40; actualHours: 40. "4000 $"
    p2 := Programmer new surname: 'Стейн'; hourlyRate: 100; minHours: 40; actualHours: 30. "2250 $ (зі штрафом)"
    m1 := Manager new surname: 'Шевченко'; hourlyRate: 200; subordinatesCount: 10. "8800 $"

    workers := OrderedCollection with: p1 with: p2 with: m1.