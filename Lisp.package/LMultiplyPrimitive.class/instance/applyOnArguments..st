application
applyOnArguments: arguments
	
	^ arguments inject: 1 into: [ :a :b | a * b ]