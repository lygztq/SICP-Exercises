(define (cont_frac Ns Ds k)
  (define (reduce i n d r)
    (if (= i k)
      (/ n d)
      (/ n (+ d r))
    )
  )
  (define (iter n ret)
    (let ((Ni (Ns n)) (Di (Ds n)))
      (if (= n 0)
        ret
        (iter (- n 1) (reduce n Ni Di ret))
      )
    )
  )
  (iter k 1)
)

(display
  (cont_frac
    (lambda (i) 1.0)
    (lambda (i) 1.0)
    100
  )
)
(exit)
