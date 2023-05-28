(require errortrace) ;; Ofrece más información al producirse un error
(require racket/trace)


(define (sum num1 num2)
    (+ num1 num2))

(display "Ejemplo de Suma")
(newline)
(display (sum 2 3))
(newline)
(newline)

(display "Manejo de listas:")
(newline)
;; Car acepta una lista como parámetro y devuelve su primer elemento
(display "Uso basico de car, input: (1 3 4 5), output: ")
(display (car '(1 3 4 5)))
(newline)
;; Cdr acepta una lista como parámetro y devuelve todos sus elementos menos el primero
(display "Uso basico de cdr, input: (1 (3 4) 5), output: ")
(display (cdr '(1 (3 4) 5)))
(newline)
;; Cons concatena o construye listas el primer parámetro puede ser un átomo o una lista pero el segundo tiene que ser obligaotriamente una lista
(display "Uso basico de cons, input: (1 (3 4) 5) (A B C), output: ")
(display (cons '(1 (3 4) 5) '(A B C)))
(newline)
;; list concatena o construye listas de manera más flexible los elementos pueden ser listas o no
(display "Uso basico de list, input: (1 (3 4) 5) 'A, output: ")
(display (list '(1 (3 4) 5) 'A))
(newline)
;; equal? toma dos parámetros y devuelve si son iguales o no, acepta cualquier cosa.
(display "Uso basico de equal?, input: (1 (3 4) 5) 'A, output: ")
(display (equal? '(1 (3 4) 5) 'A))
(newline)
;; null comprueba si su único parámetro es una lista vacía
(display "Uso basico de null?, input: (1 (3 4) 5), output: ")
(display (null? '(1 (3 4) 5)))
(newline)
;; list comprueba si su único parámetro es una lista
(display "Uso basico de list?, input: (1 (3 4) 5), output: ")
(display (list? '(1 (3 4) 5)))
(newline)
(newline)
(display "Manejo de funciones")
;; Lambda crea funciones sin nombre que se ejecutan al momento, 1 param = lista con nombres de parámetros que acepta, 2 param = codigo de la función
(display "Uso basico de una función lambda, input:  output: ")
(display ((lambda (L) (car (cdr L))) '(A B C)) )
(newline)
(display "Función último: input: (A B C D E F G H I J K L M): ")
(define (last lista)
    (if (null? (cdr lista))
        (car lista)
        (last (cdr lista))
    )
)
(display (last'(A B C D E F G H I J K L M)) )
(newline)
(display "Factorial de 8: ")
(define (factorial number)
    (if (<= number 1)
        1
        (* number (factorial(- number 1)))
    )
)
(display (factorial 8) )
(newline)
(display "Is inside of a list (A B C D E) E: ")
(define (isInside lista element)
    (if (null? lista)
        #f
        (if (equal? element (car lista)) 
            #t
            (isInside (cdr lista) element)
        )
    )
)
(display (isInside '(A B C D E) 'E) )
(newline)