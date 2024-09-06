#lang racket

(define (nodo-value nodo)
  (car nodo))

(define (nodo-izq nodo)
  (cadr nodo))

(define (nodo-der nodo)
  (caddr nodo))

(define (buscar-menor arbol)
  (if (equal? (nodo-izq arbol) '())
      (nodo-value arbol)
      (buscar-menor (nodo-izq arbol))))

(define (elim-menor arbol)
  (cond
    ((equal? (nodo-izq arbol) '()) (nodo-der arbol))
    (else
     (list (nodo-value arbol)
           (elim-menor (nodo-izq arbol))
           (nodo-der arbol)))))

(define (elim arbol value)
  (cond
    ((equal? arbol '()) '())
    ((< value (nodo-value arbol))
     (list (nodo-value arbol)
           (elim (nodo-izq arbol) value)
           (nodo-der arbol)))
    ((> value (nodo-value arbol))
     (list (nodo-value arbol)
           (nodo-izq arbol)
           (elim (nodo-der arbol) value)))
    (else
     (cond
       ((and (equal? (nodo-izq arbol) '()) (equal? (nodo-der arbol) '()))
        '())
       ((equal? (nodo-izq arbol) '())
        (nodo-der arbol))
       ((equal? (nodo-der arbol) '())
        (nodo-izq arbol))
       (else
        (let ([menor-der (buscar-menor (nodo-der arbol))])
          (list menor-der
                (nodo-izq arbol)
                (elim-menor (nodo-der arbol)))))))))
