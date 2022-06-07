(define (make-point x y) (cons x y))
(define (x-point p) (car p))
(define (y-point p) (cdr p))
(define (display-point p)
  (display "(")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display ")")
  (newline)
)

(define (make-segment p1 p2) (cons p1 p2))
(define (start-segment s) (car s))
(define (end-segment s) (cdr s))

(define (avg a b) (/ (+ a b) 2))

(define (midpoint-segment s)
  (let ((start (start-segment s))
        (end   (end-segment s)))
    (make-point
      (avg (x-point start) (x-point end))
      (avg (y-point start) (y-point end))
    )
  )
)

(let ((p1 (make-point 10 4))
      (p2 (make-point 2 4)))
  (display-point
    (midpoint-segment
      (make-segment p1 p2)
    )
  )
)

(exit)
