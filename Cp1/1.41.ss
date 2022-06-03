(define (double f)
  (lambda (x) (f (f x)))
)

(define (inc x) (+ x 1))

(display
  (((double (double double)) inc) 5)
)
(exit)

; double: 2
; (double double): 2^2 = 4
; double (double double): 4^2 = 16
