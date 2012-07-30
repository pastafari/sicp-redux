; First an observation: 
; The abstraction 'p' yields itself parenthesized, i.e. p -> (p)
; If eval'ed, this will lead to a infinite recursion yielding (((((((.........(p).........)))))))
; 
; Moving on to the abstraction 'test', it yields 0 if x is 0, or y otherwise 
; Consider the expression: (test 0 (p))
; Consider the two cases:
; Applicative order evaluation:
; The operator evaluates to the body of the abstraction 'test'
; The first operand evaluates to 0
; Whereas the second operand (p) cannot be evaluated as it yields an infinite recursion.

; Normal order evaluation:
; The operator evaluates to the body of the abstraction 'test'
; The operands are not eval'ed until necessary
; The body of the abstraction 'test' is a special form ("if")
; As per the rules for the special form, the predicate (= x 0) is eval'ed first
; Since the predicate is true, the consequent is eval'ed and yielded as the value of the expression, i.e. 0
; The alternative to the if is never eval'ed in this case, so all is well.

(define (p) (p))

;Value: p

(define (test x y)
  (if (= x 0)
      0
      y))

;Value: test

(test 0 (p))
