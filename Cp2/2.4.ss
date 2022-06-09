(define true (lambda (p q) p))
(define false (lambda (p q) q))

(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z true))

(define (cdr z)
  (z false))


(display (car (cons 1 2)))
(exit)
