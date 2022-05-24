(define (f g) (g 2))

(f f)
; Exception: attempt to apply non-procedure 2
; (f f) => (f 2) => (2 2) => Error
(exit)
