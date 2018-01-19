evaluation
evaluateApplication: aList inEnvironment: anEnvironment
	| procedure |
	procedure := self evaluate: aList first inEnvironment: anEnvironment.
	^ procedure
		applyOnArguments:
			(aList allButFirst
				collect: [ :each | self evaluate: each inEnvironment: anEnvironment ])
		inEvaluator: self