running
setUp
	super setUp.
	"1. Норма виконана точно: 40 год / ставка 100 $ = 4000 $"
	pExact := Programmer new
		surname: 'Коваленко';
		hourlyRate: 100;
		minHours: 40;
		actualHours: 40.

	"2. Понаднормові години: 50 год / ставка 100 $ = 5000 $"
	pOvertime := Programmer new
		surname: 'Шевченко';
		hourlyRate: 100;
		minHours: 40;
		actualHours: 50.

	"3. Недовиконання: 30 год / ставка 100 $ (штраф 25%) = 3000 * 0.75 = 2250 $"
	pPenalized := Programmer new
		surname: 'Петренко';
		hourlyRate: 100;
		minHours: 40;
		actualHours: 30.

	"4. Нуль годин: 0 год / ставка 100 $ = 0 $"
	pZero := Programmer new
		surname: 'Бондаренко';
		hourlyRate: 100;
		minHours: 40;
		actualHours: 0