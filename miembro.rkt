#lang racket

(define (miembro a lista)
	(cond
		((empty? lista)
			#f)
		((equal? a (car lista))
			#t)
		(else
			(miembro a (cdr lista))
		)
	)
)
