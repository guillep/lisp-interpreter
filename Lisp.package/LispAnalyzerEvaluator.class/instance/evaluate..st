evaluation
evaluate: anExpression
	
	^ (self analyze: anExpression) value: self globalEnvironment