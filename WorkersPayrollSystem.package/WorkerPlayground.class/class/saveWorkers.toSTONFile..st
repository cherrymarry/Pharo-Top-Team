as yet unclassified
saveWorkers: aCollection toSTONFile: aFilename
	aFilename asFileReference writeStreamDo: [ :stream |
		STON put: aCollection onStream: stream ].
	UIManager default inform: 'Колекцію збережено у STON файл: ', aFilename.