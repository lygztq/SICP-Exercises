(define (cont_frac Ns Ds k)
  (define (iter n)
    (let ((Ni (Ns n)) (Di (Ds n)))
      (if (= n k)
        (/ Ni Di)
        (/ Ni (+ Di (iter (+ n 1))))
      )
    )
  )
  (iter 1)
)

(display
  (cont_frac
    (lambda (i) 1.0)
    (lambda (i) 1.0)
    100
  )
)
(exit)
