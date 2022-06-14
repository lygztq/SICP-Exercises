(define (reverse l)
  (define (reverse_impl l1 l2)
    (if (null? l2)
      l1
      (reverse_impl (cons (car l2) l1) (cdr l2))
    )
  )
  (reverse_impl (list) l)
)

(display (reverse (list 1 2 3 4 5)))
(exit)
