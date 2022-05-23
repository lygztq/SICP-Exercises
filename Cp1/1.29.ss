; The Simpson's rule: \int_a^b f(x) dx = h/3 [y_0 + y_n + 4 * sum(y_{odd}) + 2 * sum(y_{even})]
; n must be even, y_k = f(a + kh) and h = (b - a) / n
; for sum(y_{odd}) and sum(y_{even}), the \delta = 2h = 2/n * (b - a)

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

; assert n >= 4
(define (simpson_integral f a b n)
  (define h (/ (- b a) n))
  (define (next x) (+ x (* 2 h)))
  (define even_start (+ a (* 2 h)))
  (define odd_start (+ a h))
  (*
    (/ h 3)
    (+
      (f a)
      (f b)
      (* 2 (sum f even_start next (- b (* 2 h))))
      (* 4 (sum f odd_start next (- b h)))
    )
  )
)

(define (cube x) (* x x x))

(display (integral cube 0.0 1.0 0.01))
(newline)
(display (simpson_integral cube 0.0 1.0 10))
(exit)
