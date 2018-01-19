evaluation
applyOnArguments: arguments inEvaluator: anEvaluator
	
	| extension |
	extension := LEnvironment new.
	extension parent: environment.
	parameterList with: arguments do: [ :k :v |
		extension at: k put: v ].
	
	^ anEvaluator evaluate: body inEnvironment: extension.