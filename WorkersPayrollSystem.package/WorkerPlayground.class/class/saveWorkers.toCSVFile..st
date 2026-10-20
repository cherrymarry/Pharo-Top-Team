as yet unclassified
saveWorkers: aCollection toCSVFile: aFilename
	aFilename asFileReference writeStreamDo: [ :stream |
		aCollection do: [ :w |
			stream 
				nextPutAll: w className; nextPut: $;;
				nextPutAll: w surname; nextPut: $;;
				nextPutAll: w experience asString; nextPut: $;;
				nextPutAll: w hourlyRate asString; nextPut: $;;
				nextPutAll: w minHours asString; cr ] ].
	UIManager default inform: 'Колекцію збережено у CSV файл: ', aFilename.