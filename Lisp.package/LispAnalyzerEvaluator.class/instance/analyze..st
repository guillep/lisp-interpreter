evaluation
analyze: anExpression
	
	(self isSelfEvaluating: anExpression)
		ifTrue: [ ^ [ :anEnvironment | anExpression ] ].

	(self isAssignmentSpecialForm: anExpression)
		ifTrue: [ ^ self analyzeAssignment: anExpression ].

	(self isIfSpecialForm: anExpression)
		ifTrue: [ ^ self analyzeIf: anExpression ].

	(self isLambdaSpecialForm: anExpression)
		ifTrue: [ ^ self analyzeLambda: anExpression ].

	(self isDefineSpecialForm: anExpression)
		ifTrue: [ ^ self analyzeDefine: anExpression ].
		
	(self isSequenceSpecialForm: anExpression)
		ifTrue: [ ^ self analyzeSequence: anExpression allButFirst ].
	
	(self isVariable: anExpression)
		ifTrue: [ ^ [ :anEnvironment | anEnvironment lookup: anExpression ] ].

	(anExpression isKindOf: Array)
		ifTrue: [ ^ self analyzeApplication: anExpression ].
		
	self error: 'unrecognized expression ', anExpression asString.