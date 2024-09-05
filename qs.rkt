#lang racket

(define (menores a lista)
	(cond
		((empty? lista)
			lista)
		((<= (car lista) a)
			(cons (car lista) (menores a (cdr lista))))
		(else
			(menores a (cdr lista)))
	)
)

(define (mayores a lista)
	(cond
		((empty? lista)
			lista)
		((> (car lista) a)
			(cons (car lista) (mayores a (cdr lista))))
		(else
			(mayores a (cdr lista)))
	)
)

(define (qs lista)
	(cond
		((empty? lista)
			lista)
		(else
			(append 
				(qs (menores (car lista) (cdr lista)))
				(list (car lista))
				(qs (mayores (car lista) (cdr lista)))
			)
		)
	)
)
