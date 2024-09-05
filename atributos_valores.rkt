#lang racket

(define (automovil lista1 lista0)
	(cond
		((not (= (length lista0) (length lista1)))
			"Hay mas valores que atributos o vice versa\n")
		((empty? lista0)
			'())
		(else
			(cons (cons (car lista0) (car lista1)) (automovil (cdr lista0) (cdr lista1)))
		)
	)
)
