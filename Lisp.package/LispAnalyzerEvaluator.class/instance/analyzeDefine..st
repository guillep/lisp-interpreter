analysis
analyzeDefine: anExpression 
	
	(self isPair: anExpression second)
		ifTrue: [ ^ self analyzeFunctionDefinition: anExpression ].
	
	^ self analyzeVariableDefinition: anExpression.