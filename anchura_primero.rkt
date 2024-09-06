#lang racket

(define (anchura-primero arbol)
  (define (aap cola resultado)
    (cond
      ((empty? cola) (reverse resultado))
      (else
       (let ((current (car cola))
             (cola-restante (cdr cola)))
         (cond
           ((equal? current '()) (aap cola-restante resultado))
           (else (aap (append cola-restante (list (cadr current) (caddr current)))
                      (cons (car current) resultado))))))))
  (aap (list arbol) '()))
