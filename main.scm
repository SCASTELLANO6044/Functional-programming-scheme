(require errortrace) ;; Ofrece más información al producirse un error
(require racket/trace) ;; Permite seguir la ejecución de una función usando antes (trace nombre_de_función)

(define (expo base exp)
    (if (= exp 0)
        1
        (* base(expo base (- exp 1)))))

(display (expo 2 10))
(newline)

(define (fibo num)
    (cond ((= num 0) 0)
          ((= num 1) 1)
          (else (+ (fibo (- num 1)) (fibo (- num 2))))))
(display (fibo 10))
(newline)
; ;;Usos del car
; (car '(A N C)) ;; A
; (car '((A B) C D)) ;; (A B)
; ; (car 'A) ;;Error
; (car '(A)) ;; A
; ; (car '()) ;; Error