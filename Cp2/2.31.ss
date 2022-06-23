(define (tree-map tree func)
  (map
    (lambda (sub-tree)
      (if (pair? sub-tree)
        (tree-map sub-tree func)
        (func sub-tree)
      )
    )
    tree
  )
)

(define (square x) (* x x))

(define (square-tree tree)
  (tree-map tree square)
)

(display (square-tree (list 1
       (list 2 (list 3 4) 5)
       (list 6 7))))
(exit)
