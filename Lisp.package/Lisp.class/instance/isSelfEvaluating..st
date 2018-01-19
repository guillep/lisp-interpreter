testing
isSelfEvaluating: aValue 
	
	^ aValue isNil
		or: [aValue isNumber
			or: [ (aValue isKindOf: Boolean)
				or: [ aValue isString and: [ aValue isSymbol not ] ] ]]