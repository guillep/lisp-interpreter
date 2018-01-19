analysis
analyzeLambda: anExpression

	| bodyProcedure |
	bodyProcedure := self analyzeSequence: { anExpression third }.
	^ [ :anEnvironment |
		LAnalyzedProcedure new
			parameterList: anExpression second;
			body: bodyProcedure;
			environment: anEnvironment;
			yourself ]