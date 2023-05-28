(require errortrace)
(require racket/trace)

(display "Calculate Fibonacci of 8: ")
(define (fibo number)
    (cond 
        ((equal? number 0) 0)
        ((equal? number 1) 1)
        (else (+ (fibo (- number 1)) (fibo (- number 2))))
    )
)
(display (fibo 8))
(newline)