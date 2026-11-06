as yet unclassified
updateHourlyRatesByPercent: aPercentage
	"Змінює годинну ставку всіх працівників на вказаний відсоток (наприклад, 10 для +10%)"
	| factor |
	factor := 1 + (aPercentage / 100.0).
	workers do: [ :w | w hourlyRate: w hourlyRate * factor ]