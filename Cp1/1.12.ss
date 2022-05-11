(define (pascal_elem row col) (
  cond ((or (= col 0) (= col row)) 1)
       (else (+ (pascal_elem (- row 1) col) (pascal_elem (- row 1) (- col 1))))
))

(display (pascal_elem 5 3))
(newline)
(display (pascal_elem 5 4))
(exit)
