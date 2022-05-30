(define tolerance 1e-5)
(define (abs x) (if (< x 0) (- x) x))
(define (close-enough v1 v2) (< (abs (- v1 v2)) tolerance))
(define (fix-point f init)
  (let ((next (f init)))
    (if (close-enough next init) next (fix-point f next))
  )
)


(display (fix-point (lambda (x) (+ 1 (/ 1 x))) 1.0))
(exit)
