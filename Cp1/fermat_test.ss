(define (square n) (* n n))
(define (even? n) (= (remainder n 2) 0))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (fermat_test n)
  (define (try_once a)
    (= (expmod a n n) a)
  )
  (try_once (+ 1 (random (- n 1))))
)

(define (fast_prime? n times)
  (cond ((= times 0) #t)
        ((fermat_test n) (fast_prime? n (- times 1)))
        (else #f)))

(display (fast_prime? 13 2))
(newline)
(display (fast_prime? 1993932 2))
(exit)
