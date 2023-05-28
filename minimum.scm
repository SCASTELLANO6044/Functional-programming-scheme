(require errortrace)
(require racket/trace)

(display "Calculate the minimum element in a list (2 8 4 5 6 1): ")
(define (minimo lista)
    (cond 
        ((null? lista) #f)
        ((null? (cdr lista)) (car lista))
        ((<= (car lista) (minimo (cdr lista))) (car lista))
        (else (minimo (cdr lista)))
    )
)
(display (minimo '(2 8 4 5 6 1)))
(newline)