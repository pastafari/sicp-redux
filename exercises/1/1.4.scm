; The body of the abstraction a-plus-abs-b has as its operator a special form "if"
; The interpreter first evals the if which yields either + or - depending on whether 
; the formal parameter b is > 0 or not.
; The primitive operator yielded by the if is then applied to the arguments a b
; Thus if b is indeed positive, the abstraction will yield a + b, else it will yield a - b
; effectively computing the sum of a and the absolute value of b


(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;Value: a-plus-abs-b

(a-plus-abs-b 1 2)

;Value: 3

(a-plus-abs-b 1 -2)

;Value: 3

