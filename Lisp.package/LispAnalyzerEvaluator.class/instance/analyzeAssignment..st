analysis
analyzeAssignment: anExpression 

	| variable value |
	variable := anExpression second.
	value := self analyze: anExpression third.
	^ [ :anEnvironment |
		(anEnvironment definesBindingForName: variable)
			ifFalse: [ self error: 'Unbound variable ' , variable , ' - set! ' ].
		value := value value: anEnvironment.
		anEnvironment at: variable put: value ]