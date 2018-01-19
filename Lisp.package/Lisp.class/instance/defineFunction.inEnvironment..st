definitions
defineFunction: anExpression inEnvironment: anEnvironment
	
	| variable value parameters |
	variable := anExpression second first.
	parameters := anExpression second allButFirst.
	value := self
		evaluate: { #lambda . parameters . { #begin . anExpression third } }
		inEnvironment: anEnvironment .
	anEnvironment at: variable put: value.
	^  #ok