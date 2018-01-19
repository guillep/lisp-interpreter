lisp := Lisp scheme.
lisp evaluate: #(define (factorial n)
	(if (= n 1)
		 1
		 (* n (factorial (- n 1) )))).
lisp evaluate: #(factorial 5).

lisp evaluate: #(define factorial (lambda (n)
	(if (= n 1)
		 1
		 (* n (factorial (- n 1) ))))).
		
lisp evaluate: #(define map (lambda (f list)
	(if (#'null?' list)
		 nil
		 (cons (f (car list)) (map f (cdr list)))))).

lisp evaluate: #(define double (lambda (n) (* 2 n))).
lisp evaluate: #(map double (cons 1 (cons 2 (cons 3 nil)))).

[lisp evaluate: #(factorial 5)] bench.
[lisp evaluate: #(factorial 5).] bench. "'67,592 per second'"
[lisp evaluate: #(factorial 100).] bench. "'1,085 per second'"