(define dx 0.0001)
(define (avg a b c) (/ (+ a b c) 3))
(define (smooth f)
  (lambda (x)
    (avg
      (f x)
      (f (+ x dx))
      (f (- x dx))
    )
  )
)

(define (repeat f n)
  (if (= n 1)
    (lambda (x) (f x))
    (lambda (x) (f ((repeat f (- n 1)) x)))
  )
)

(define (square x) (* x x))

(display (((repeat smooth 3) square) 2))
(exit)
