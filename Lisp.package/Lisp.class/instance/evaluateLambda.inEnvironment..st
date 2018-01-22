evaluation
evaluateLambda: anExpression inEnvironment: anEnvironment
	^ LProcedure new
		parameterList: anExpression second;
		body: #( begin ), (anExpression copyFrom: 3 to: anExpression size);
		environment: anEnvironment;
		yourself