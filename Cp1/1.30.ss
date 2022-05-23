(define (sum term a next b)
  (define (sum-item result current)
    (if (> current b) result 
                      (sum-item (+ (term current) result) (next current)))
  )
  (sum-item 0 a)
)

(define (cube x) (* x x x))
(define (forward x) (+ x 1))

(display (sum cube 1 forward 4))
(exit)
