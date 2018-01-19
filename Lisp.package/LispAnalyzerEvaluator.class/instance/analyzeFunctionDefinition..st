analysis
analyzeFunctionDefinition: anExpression 
	
	| variable value parameters |
	variable := anExpression second first.
	parameters := anExpression second allButFirst.
	value := self analyze: { #lambda . parameters . { #begin . anExpression third } }.
	^ [ :anEnvironment |
		anEnvironment at: variable put: (value value: anEnvironment).
		#ok]