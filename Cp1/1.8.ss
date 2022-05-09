(define eps 1e-5)

(define (abs x) (
  if (< x 0) (- x) x
))

(define (square x)
  (* x x))

(define (triple x) (
  * (* x x) x
))

(define (improve gauss x) (
  / (+ (* 2 (triple gauss)) x) (* 3 (square gauss))
))

(define (good_enough x y) (
  < (abs (- x y)) eps
))

(define (root_iter gauss last_gauss x) (
  if (good_enough gauss last_gauss) gauss (root_iter (improve gauss x) gauss x)
))

(define (root3 x) (root_iter 1 -1 x))

(display (root3 2.0))

(exit)
