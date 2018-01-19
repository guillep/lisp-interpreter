analysis
analyzeVariableDefinition: anExpression 

	| variable value |
	variable := anExpression second.
	value := self analyze: anExpression third.
	^ [ :anEnvironment | anEnvironment at: variable put: (value value: anEnvironment) ]