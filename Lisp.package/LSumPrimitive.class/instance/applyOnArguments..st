application
applyOnArguments: arguments
	
	^ arguments inject: 0 into: [ :a :b | a + b ]