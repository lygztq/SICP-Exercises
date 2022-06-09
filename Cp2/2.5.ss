(define (iseven x) (= (remainder x 2) 0))
(define (square x) (* x x))
(define (pow x n)
  (define (iter curr exp ret)
    (cond
      ((= 0 exp) ret)
      ((iseven exp) (iter (square curr) (/ exp 2) ret))
      (else (iter curr (- exp 1) (* curr ret)))
    )
  )
  (iter x n 1)
)

(define (strip n fac)
  (define (iter curr ret)
    (if (= (remainder curr fac) 0)
      (iter (/ curr fac) (+ ret 1))
      ret
    )
  )
  (iter n 0)
)

(define (cons x y)
  (*
    (pow 2 x)
    (pow 3 y)
  )
)

(define (car p) (strip p 2))
(define (cdr p) (strip p 3))

(display (car (cons 3 4)))
(newline)
(display (cdr (cons 3 4)))
(exit)
