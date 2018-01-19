evaluation
evaluateLambda: anExpression inEnvironment: anEnvironment
	
	^ LProcedure new
		parameterList: anExpression second;
		body: { #begin . anExpression third};
		environment: anEnvironment;
		yourself