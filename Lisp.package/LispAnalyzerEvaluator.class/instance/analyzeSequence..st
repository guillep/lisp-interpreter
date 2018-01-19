analysis
analyzeSequence: aSequence 

	| lastResult first rest |
	lastResult := nil.
	first := self analyze: aSequence first.
	aSequence size = 1
		ifTrue: [ ^ first ].
	rest := self analyzeSequence: aSequence allButFirst.
	^ [ :anEnvironment |
		first value: anEnvironment.
		rest value: anEnvironment ].