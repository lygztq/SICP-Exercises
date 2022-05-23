(define (square n) (* n n))
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
  (= (remainder b a) 0))
(define (prime? n)
  (and (not (= 1 n)) (= n (smallest-divisor n))))

(define (not x) (if x #f #t))

(define (filtered_map_reduce reduce_op map_op cond init a next b)
  (define (filter n) (if (cond n) (map_op n) init))
  (define (iter current result)
    (if (> current b)
      result
      (iter (next current) (reduce_op (filter current) result)) 
    )
  )
  (iter a init)
)

(define (direct x) x)
(define (plus_one x) (+ x 1))
; the sum of the squares of the prime numbers in the interval a to b
(define (fa a b) (filtered_map_reduce + direct prime? 0 a plus_one b))

(display (fa 1 10))

(exit)
