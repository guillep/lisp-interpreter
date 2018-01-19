evaluation
evaluateSequence: aSequence inEnvironment: anEnvironment
	
	| lastResult |
	lastResult := nil.
	aSequence do: [ :each | lastResult := self evaluate: each inEnvironment: anEnvironment ].
	^ lastResult