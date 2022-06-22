(define nil (list))

(define (reverse li)
  (if (null? li)
    nil
    (append (reverse (cdr li)) (list (car li)))
  )
)

; (define (deep-reverse li)
;   (cond
;     ((null? li) nil)
;     ((not (pair? li)) (list li))
;     (else (append (deep-reverse (cdr li)) (deep-reverse (car li))))
;   )
; )

(define (deep-reverse li)
  (cond
    ((null? li) nil)
    ((not (pair? (car li))) (append (deep-reverse (cdr li)) (list (car li))))
    (else (append (deep-reverse (cdr li)) (list (deep-reverse (car li)))))
  )
)

(define example (list 1 2 3 4 5))
(define example2 (list (list 1 2) (list (list 5 6) 4)))
(display (reverse example))
(newline)
(display (deep-reverse example2))
(exit)
