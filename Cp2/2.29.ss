(define (make-mobile left right)
  (list left right)
)

(define (make-branch length structure)
  (list length structure)
)

(define (left-branch mobile)
  (car mobile)
)

(define (right-branch mobile)
  (cdr (car mobile))
)

(define (length branch)
  (car branch)
)

(define (structure branch)
  (cdr (car branch))
)

(define (branch-weight branch)
  (let ((struct (structure branch)))
    (if (pair? struct)
      (total-weight struct)
      struct
    )
  )
)

(define (total-weight mobile)
  (+
    (branch-weight (left-branch mobile))
    (branch-weight (right-branch mobile))
  )
)

(define (balanced mobile)
  (and
    (=
      (* (length (left-branch mobile)) (total-weight (left-branch mobile)))
      (* (length (right-branch mobile)) (total-weight (right-branch mobile)))
    )
    (if (pair? (structure (left-branch mobile)))
      (balanced (structure (left-branch mobile)))
      #t
    )
    (if (pair? (structure (right-branch mobile)))
      (balanced (structure (right-branch mobile)))
      #t
    )
  )
)
