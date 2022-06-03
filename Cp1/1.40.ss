(define dx 0.00001)
(define eps 0.00001)

(define (abs x)
  (if (< x 0)
    (- x)
    x
  )
)

(define (close_enough a b) (< (abs (- a b)) eps))

(define (fixed-point f x)
  (let ((next (f x)))
    (if (close_enough x next)
      next
      (fixed-point f next)
    )
  )
)

(define (avg a b) (/ (+ a b) 2))

(define (avg_dumping f)
  (lambda (x) (avg x (f x)))
)

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(define (newtons-method g guess)
  (fixed-point-of-transform g newton-transform guess))

(define (cubic a b c)
  (lambda (x)
    (+
      (* x x x)
      (* a x x)
      (* b x)
      c
    )
  )
)

(define zero_point (newtons-method (cubic 1 2 2) 1))

(display zero_point)
(newline)
(display ((cubic 1 2 2) zero_point))
(exit)
