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
    (lambda (i)
      (cond
        ((< i 3) i)
        ((= (remainder (+ i 1) 3) 0) (* 2 (/ (+ i 1) 3)))
        (else 1)
      )
    )
    100
  )
)
(exit)
