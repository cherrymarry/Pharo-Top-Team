initialization
findWorkerBySurname: aSurname
	^ records select: [ :w | w surname = aSurname ]