(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))
(define (count-change amount)
  (cc amount 5)
)
(define (cc amount coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (null? coins)) 0)
        (else (+ (cc amount
                     (cdr coins))
                 (cc (- amount
                        (car coins))
                     coins)))))


(display (cc 100 us-coins))
(exit)
