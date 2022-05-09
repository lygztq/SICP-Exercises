(define eps 1e-5)

(define (abs x) (
  if (< x 0) (- x) x
))

(define (square x)
  (* x x))

(define (improve gauss x) (
  / (+ gauss (/ x gauss)) 2
))

(define (good_enough x y) (
  < (abs (- x y)) eps
))

(define (eval_double x y) y)

(define (print x)
  (display x) (newline))

(define (sqrt_iter gauss last_gauss x) (
  if (good_enough last_gauss gauss) gauss (sqrt_iter (improve gauss x) gauss x)
))

(define (sqrt x) (sqrt_iter 100 (- 1.0) x))

(display (sqrt 2.0))

(exit)
