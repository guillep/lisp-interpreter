evaluation
evaluateDefine: anExpression inEnvironment: anEnvironment

	(self isPair: anExpression second)
		ifTrue: [ ^ self defineFunction: anExpression inEnvironment: anEnvironment ].
	
	self defineVariable: anExpression inEnvironment: anEnvironment.
	^ #ok