(define (compose f g)
  (lambda (x) (f (g x)))
)

(define (repeat f n)
  (if (= n 1)
    (lambda (x) (f x))
    (lambda (x) (f ((repeat f (- n 1)) x)))
  )
)

(define (square x) (* x x))

(display ((repeat square 2) 5))
(exit)
