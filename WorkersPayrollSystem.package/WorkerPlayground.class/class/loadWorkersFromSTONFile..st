as yet unclassified
loadWorkersFromSTONFile: aFilename
	| result |
	result := aFilename asFileReference readStreamDo: [ :stream |
		STON fromStream: stream ].
	^ result