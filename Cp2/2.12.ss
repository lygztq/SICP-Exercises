(define (make_interval a b) (cons a b))
(define (upper_bound x) (car x))
(define (lower_bound x) (cdr x))
(define (display_interval name x)
  (display name)
  (display ": (")
  (display (lower_bound x))
  (display ", ")
  (display (upper_bound x))
  (display ")")
  (newline)
)

(define (make_center_percent c err)
  (cons c err)
)

(define (center x) (car x))
(define (error_rate x) (cdr x))
(define (display_center name x)
  (display name)
  (display ": (center = ")
  (display (center x))
  (display ", err = ")
  (display (error_rate x))
  (display "%)")
  (newline)
)

(define (center_upper_bound x)
  (+ (center x) (* 0.01 (error_rate x)))
)

(define (center_lower_bound x)
  (- (center x) (* 0.01 (error_rate x)))
)

(define (center_range x)
  (make_interval
    (center_lower_bound x)
    (center_upper_bound x)
  )
)

(define (width x)
  (/
    (-
      (center_upper_bound x)
      (center_lower_bound x)
    )
    2
  )
)
