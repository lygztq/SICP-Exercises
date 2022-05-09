; https://codology.net/post/sicp-solution-exercise-1-10/
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
(display (A 1 10)) ; 1024
(newline)
(display (A 2 4)) ; 65536
(newline)
(display (A 3 3)) ; 65536
(newline)

(define (f n) (A 0 n))

(define (g n) (A 1 n))

(define (h n) (A 2 n))

(define (k n) (* 5 n n))

(exit)

; f(n) = A(0, n) = 2n
; g(n) = A(1, n) = A(0, A(1, n-1)) = 2 * A(1, n-1) = 2^n
; h(n) = A(2, n) = A(1, A(2, n-1)) = 2^(A(2, n-1)) = 2^(2^(...^2))

; see this
; https://docs.racket-lang.org/reference/debugging.html#%28mod-path._racket%2Ftrace%29
