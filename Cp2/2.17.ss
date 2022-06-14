(define (last_pair p)
 (if (null? (cdr p))
    p
    (last_pair (cdr p))
 )
)

(define (display_pair p)
  (display "(")
  (display (car p))
  (display ", ")
  (display (cdr p))
  (display ")")
  (newline)
)

(display_pair (last_pair (list 1 2 3 4 5)))
(exit)
