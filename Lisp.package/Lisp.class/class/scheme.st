accessing
scheme
	
	| lisp |
	lisp := self new.
	lisp globalEnvironment
		at: #+ put: LSumPrimitive new;
		at: #* put: LMultiplyPrimitive new;
		at: #- put: LSubstractPrimitive new;
		at: #= put: LComparePrimitive new;
		at: #cons put: LConsPrimitive new;
		at: #car put: LCarPrimitive new;
		at: #cdr put: LCdrPrimitive new;
		at: #'pair?' put: LIsPairPrimitive new;
		at: #'null?' put: LIsNullPrimitive new.
	^ lisp