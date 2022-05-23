(define (map_reduce reduce_op map_op init_value a next b)
  (define (item result current)
    (if (> current b) result (item (reduce_op result (map_op current)) (next current)))
  )
  (item init_value a)
)

(define (map_reduce_recursive reduce_op map_op init_value a next b)
  (if (> a b) init_value (reduce_op (map_op a) (map_reduce_recursive reduce_op map_op init_value (next a) next b)))
)

(define (plus_one x) (+ x 1))
(define (direct x) x)

(define (factorial n) (map_reduce * direct 1 1 plus_one n))
(define (factorial_recursive n) (map_reduce_recursive * direct 1 1 plus_one n))

(display (factorial 4))
(newline)
(display (factorial_recursive 4))
(exit)
