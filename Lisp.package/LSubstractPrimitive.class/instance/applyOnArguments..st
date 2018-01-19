application
applyOnArguments: arguments
	
	arguments size = 1
		ifTrue: [ ^ arguments first negated ].
	^ arguments first - arguments second