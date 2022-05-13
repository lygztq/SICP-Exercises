(define (exp_curr b n)
  (if (= n 0) 1 (* b (exp_curr b (- n 1)))))

(define (exp_iter b n)
  (define (exp_iter_impl cnt prod) (
    if (= cnt 0) prod (exp_iter_impl (- cnt 1) (* prod b))
  ))
  (exp_iter_impl n 1)
)

(define (square n) (* n n))
(define (is_even n) (= (remainder n 2) 0))

(define (fast_exp b n)
  (cond ((= n 0) 1)
        ((is_even n) (square (fast_exp b (/ n 2))))
        (else (* b (fast_exp b (- n 1))))      
  )
)

(display (exp_curr 2 10))
(newline)
(display (exp_iter 2 10))
(newline)
(display (fast_exp 2 13))
(newline)
(display (fast_exp 2 16))
(exit)
