#lang racket

(define (longitud_pila lista)
	(cond
		((empty? lista)
			0)
		(else
			(+ 1 (longitud_pila (cdr lista))))
	)
)

(define (longitud_cola_aux lista cont)
 	(cond
 		((empty? lista)
 			cont)
 		(else
 			(longitud_cola_aux (cdr lista) (+ 1 cont)))
	)
)

(define (longitud_cola lista)
	(longitud_cola_aux lista 0)
)
