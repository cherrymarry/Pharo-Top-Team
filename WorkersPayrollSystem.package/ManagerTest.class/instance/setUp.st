running
setUp
	super setUp.
	"1. Стандартний менеджер: 10 підлеглих, ставка 200 $/год
	База: 40 * 200 = 8000 $. Бонус: 10% (1 + 0.10 = 1.10). Разом: 8800 $"
	mStandard := Manager new
		surname: 'Сидоренко';
		hourlyRate: 200;
		subordinatesCount: 10.

	"2. Менеджер без підлеглих: 0 підлеглих
	База: 40 * 200 = 8000 $. Бонус: 0%. Разом: 8000 $"
	mNoSubordinates := Manager new
		surname: 'Мельник';
		hourlyRate: 200;
		subordinatesCount: 0.

	"3. Менеджер з великою командою: 50 підлеглих
	База: 40 * 200 = 8000 $. Бонус: 50% (1.50). Разом: 12000 $"
	mLargeTeam := Manager new
		surname: 'Ткаченко';
		hourlyRate: 200;
		subordinatesCount: 50