#lang racket

(define (elim a lista)
	(cond
		((empty? lista)
			lista)
		((equal? a (car lista))
			(cdr lista))
		(else
			(cons (car lista) (elim a (cdr lista)))
		)
	)
)
