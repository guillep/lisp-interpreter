accessing
lookup: aString 
	
	^ frame at: aString ifAbsent: [ 
		parent ifNil: [ self error: 'Unbound variable ', aString ].
		parent lookup: aString ]