analysis
analyzeIf: anExpression

	| predicate consequent alternative |
	predicate := self analyze: anExpression second.
	consequent := self analyze: anExpression third.
	alternative := self analyze: anExpression fourth.
	^ [ :anEnvironment | | result |
		result := predicate value: anEnvironment.
		(self isTrue: result)
			ifTrue: [ consequent value: anEnvironment ]
			ifFalse: [ alternative value: anEnvironment ] ]