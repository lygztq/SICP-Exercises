; https://skeptric.com/sicp-1_5/
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; dead-loop, use applicative-order evaluation means argument (p)
; will be evaluated first, and to apply p is to apply p, which is
; an infinite call sequence.
(test 0 (p))

; However, if we strip the test function wrapper and directly write:
(display (if (= 0 0) 1 (p)))
; the (p) expression will not be evaluated.

(exit)
