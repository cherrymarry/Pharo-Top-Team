tests
testAreAllProgrammersMeetingNorm
	"Перевіряємо випадки: коли норма порушена і коли всі її виконують"
	self deny: company areAllProgrammersMeetingNorm.
	
	programmer2 actualHours: 40.
	self assert: company areAllProgrammersMeetingNorm