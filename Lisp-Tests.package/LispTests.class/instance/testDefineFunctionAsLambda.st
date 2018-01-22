tests
testDefineFunctionAsLambda

	lisp evaluate: #(define factorial (lambda (n)
		(if (= n 1)
			 1
			 (* n (factorial (- n 1) ))))).
	
	self assert: (lisp evaluate: #(factorial 5)) equals: 5 factorial