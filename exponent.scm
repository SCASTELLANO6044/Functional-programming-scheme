(display "Calculate exponential of 8^2: ")
(define (expo base exp)
    (if (= 0 exp)
        1
        (* base (expo base (- exp 1)))
    )
)
(display (expo 8 2))
(newline)