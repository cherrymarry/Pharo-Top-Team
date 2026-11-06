accessing
highestPaid
	"Повертає найоплачуванішого працівника у колективі"
	^ workers detectMax: [ :each | each weeklySalary ]