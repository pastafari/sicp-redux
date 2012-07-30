(define (sum-of-squares-of-two-largest-numbers x y z)
  (cond ((and (< x y) (< x z)) (+ (* y y) (* z z)))
        ((and (< y x) (< y z)) (+ (* x x) (* z z)))
        (else (+ (* x x) (* y y)))))

;Value: sum-of-squares-of-two-largest-numbers

1  (sum-of-squares-of-two-largest-numbers 1 2 3)

;Value: 13

1  (sum-of-squares-of-two-largest-numbers -1 -2 -3)

;Value: 5

(sum-of-squares-of-two-largest-numbers 20 2 1)

;Value: 404

