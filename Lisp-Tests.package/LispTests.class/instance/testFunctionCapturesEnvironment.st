tests
testFunctionCapturesEnvironment
	lisp evaluate: #(define inc ((lambda ()
		(define accum 0)
		(lambda ()
			(#'set!' accum (+ accum 1))
			accum)))).
	
	self assert: (lisp evaluate: #(inc)) equals: 1.
	self assert: (lisp evaluate: #(inc)) equals: 2.
	self assert: (lisp evaluate: #(inc)) equals: 3.
	self assert: (lisp evaluate: #(inc)) equals: 4.
	self assert: (lisp evaluate: #(inc)) equals: 5.