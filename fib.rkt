#lang racket

(define (fib n)
	(cond
		((zero? n)
			0)
		((= 1 n)
			1)
		(else
			(+ (fib (- n 1)) (fib (- n 2)))
		)
	)
)
