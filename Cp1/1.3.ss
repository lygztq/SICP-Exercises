(define (max x y) (if (< x y) y x))
(define (min x y) (if (< x y) x y))
(define (square x) (* x x))
(define (sum_square_two_large x y z) (
  + (square (max x y)) (square (max (min x y) z))
))

(display (sum_square_two_large 1 2 3))

(exit)
