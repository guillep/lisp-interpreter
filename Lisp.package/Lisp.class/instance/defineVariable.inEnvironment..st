definitions
defineVariable: anExpression inEnvironment: anEnvironment

	| variable value |
	variable := anExpression second.
	value := self evaluate: anExpression third inEnvironment: anEnvironment.
	anEnvironment at: variable put: value.