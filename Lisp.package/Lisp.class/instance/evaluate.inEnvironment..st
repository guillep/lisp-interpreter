evaluation
evaluate: anExpression inEnvironment: anEnvironment
	
	(self isSelfEvaluating: anExpression)
		ifTrue: [ ^ anExpression ].

	(self isAssignmentSpecialForm: anExpression)
		ifTrue: [ ^ self evaluateAssignment: anExpression inEnvironment: anEnvironment ].

	(self isIfSpecialForm: anExpression)
		ifTrue: [ ^ self evaluateIf: anExpression inEnvironment: anEnvironment ].

	(self isLambdaSpecialForm: anExpression)
		ifTrue: [ ^ self evaluateLambda: anExpression inEnvironment: anEnvironment ].

	(self isDefineSpecialForm: anExpression)
		ifTrue: [ ^ self evaluateDefine: anExpression inEnvironment: anEnvironment ].
		
	(self isSequenceSpecialForm: anExpression)
		ifTrue: [ ^ self evaluateSequence: anExpression allButFirst inEnvironment: anEnvironment ].
	
	(self isVariable: anExpression)
		ifTrue: [ ^ anEnvironment lookup: anExpression ].	
	
	(anExpression isKindOf: Array)
		ifTrue: [ ^ self evaluateApplication: anExpression inEnvironment: anEnvironment ].
		
	self error: 'unrecognized expression ', anExpression asString.