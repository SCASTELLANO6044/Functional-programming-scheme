(require errortrace)
(require racket/trace)

(display "Calculate posPares: ")
(define (posPares lista)
    (if (null? (cdr lista))
        '()
        (cons (car (cdr lista)) (posPares (cdr lista)))
    )
)
(display (posPares '(2 8 4 5 6 1)))
(newline)

(display "Calculate aplana: ")
(define (aplana lista)
(cond ((null? lista) '()) ; Si la lista es vacía, devuelve una lista vacía
      ((not (pair? (car lista))) ; Si el primer elemento no es una lista, lo agrega a la lista resultado
       (cons (car lista) (aplana (cdr lista))))
      (else (append (aplana (car lista)) (aplana (cdr lista)))) ; Si el primer elemento es una lista, se aplica recursión para aplanarla y se concatena con la recursión sobre el resto de la lista
  )
)
(display (posPares '(2 8 (4 5) 6 1)))
(newline)