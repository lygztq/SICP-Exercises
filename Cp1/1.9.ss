(define (inc x) (+ x 1))
(define (dec x) (- x 1))

; recursive process
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; iterative process
; f return a call to f
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
