; T_pq(a, b) :=
; a' = bq + aq + ap
; b' = bp + aq
;------------------
; a'' = (bp + aq)q + (bq + aq + ap)(p + q)
;     = b(2pq + q^2) + a(2pq + q^2) + a(p^2 + q^2)
; b'' = (bp + aq)p + (bq + aq + ap)q
;     = b(p^2 + q^2) + a(2pq + q^2)
;------------------
; p' = p^2 + q^2
; q' = 2pq + q^2
(define (is_even n) (= (remainder n 2) 0))
(define (next_p p q) (+ (* p p) (* q q)))
(define (next_q p q) (+ (* 2 (* p q)) (* q q)))
(define (next_a a b p q) (+ (* b q) (* a (+ p q))))
(define (next_b a b p q) (+ (* b p) (* a q)))

(define (fib n)
  (define (fib_iter p q a b n)
    (cond ((= n 0) b)
          ((is_even n) (fib_iter (next_p p q) (next_q p q) a b (/ n 2)))
          (else (fib_iter p q (next_a a b p q) (next_b a b p q) (- n 1)))
    )
  )
  (fib_iter 0 1 1 0 n)
)

(define (fib_ref n)
  (cond ((= n 0) 1)
        ((= n 1) 1)
        (else (+ (fib (- n 1)) (fib (- n 2))))
  ))

(display (= (fib 2) (fib_ref 2)))
(newline)
(display (= (fib 4) (fib_ref 4)))
(newline)
(display (= (fib 6) (fib_ref 6)))
(exit)
