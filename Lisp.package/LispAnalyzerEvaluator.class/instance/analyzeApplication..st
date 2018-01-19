analysis
analyzeApplication: aList 

	| procedure arguments |
	procedure := self analyze: aList first.
	arguments := aList allButFirst collect: [ :arg | self analyze: arg ].
	^ [ :anEnvironment | 
		(procedure value: anEnvironment)
			applyOnArguments: (arguments collect: [ :each | each value: anEnvironment ])
			inEvaluator: self]