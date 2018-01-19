evaluation
evaluateIf: anExpression inEnvironment: anEnvironment
	| predicate result |
	predicate := anExpression second.
	result := self evaluate: predicate inEnvironment: anEnvironment.
	^ (self isTrue: result)
		ifTrue: [ self evaluate: anExpression third inEnvironment: anEnvironment ]
		ifFalse: [ self evaluate: anExpression fourth inEnvironment: anEnvironment ]