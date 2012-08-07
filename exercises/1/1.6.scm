(define (new-if predicate consequent alternative)
  (cond (predicate consequent)
        (else alternative)))

;; `if` is a special form in Scheme where the predicate is eval'ed and
;; if it is true, the consequent is eval'ed, else the alternative.
;; When we define new-if, we are defining a new named procedure, which
;; will be eval'ed according to the standard evaluation rules of
;; Scheme, i.e. applicative order substitution.
;; So the call to new-if gets expanded into
;; (cond ((good-enough? guess x) x)
;;       ((else (sqrt-iter (improve guess x) x)))
;; where the interpreter recurses is in evaluating both good-enough?
;; and sqrt-iter before performing the cond test! 

;; I struggled with this one for a long time, because I was chasing
;; after the wrong thing. I assumed the problem would be in the
;; differences between `cond` and `if` according to the footnote,
;; "A minor difference between `if` and `cond` is that the <e> part of
;; each cond clause may be a sequence of expressions. If the
;; corresponding <p> is found to be true, the expressions <e> are
;; evaluated in sequence and the value of the final expression is
;; returned as the value of the cond. In an if expression, however the
;; <consequent> and <alternative> must be single expressions."

;;I couldn't figure out what multiple expressions meant! Since I only
;;know how to combine expressions at this point, I can't quite figure
;;out what multiple expressions means. I will leave this till later in
;;the book, but will revisit it.

;; Hat-tip to Bill the Lizard for the answer to this one
