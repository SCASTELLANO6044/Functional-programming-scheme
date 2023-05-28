(require errortrace)
(require racket/trace)

(display "Remove an element from the list (2 8 4 5 4 1) 4: ")
(define (elimina lista element)
    (cond 
        ((null? lista)'())
        ((list? (car lista)) (cons (elimina (car lista) element) (elimina (cdr lista) element)))
        ((equal? (car lista) element) (elimina (cdr lista) element))
        (else (cons (car lista) (elimina (cdr lista) element)))
    )
)
(display (elimina '(2 8 (4 5) 4 1) 4 ))
(newline)