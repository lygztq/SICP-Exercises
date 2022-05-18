(define (is_even n) (= (remainder n 2) 0))
(define (double n) (+ n n))

(define (add_mul a b) (
  cond ((= b 0) 0)
       ((is_even b) (double (add_mul a (/ b 2))))
       (else (+ a (add_mul a (- b 1))))
))

(display (add_mul 3 4))
(newline)
(display (add_mul 10 1))
(newline)
(display (add_mul 1 10))
(newline)
(display (add_mul 2 0))
(newline)
(display (add_mul 0 2))
(exit)
