evaluation
evaluateAssignment: anExpression inEnvironment: anEnvironment
	| variable value |
	variable := anExpression second.
	(anEnvironment definesBindingForName: variable)
		ifFalse: [ self error: 'Unbound variable ' , variable , ' - set! ' ].
	value := self evaluate: anExpression third inEnvironment: anEnvironment.
	anEnvironment at: variable put: value.
	^ #ok