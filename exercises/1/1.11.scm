;; f(n) = n if n < 3
;; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3

;; A linear recursive process to calculate f(n)

(define (f-recursive n)
  (if (< n 3)
      n
      (+ (f-recursive (- n 1))
         (* 2 (f-recursive (- n 2)))
         (* 3 (f-recursive (- n 3))))))

(f-recursive 5) ;Value: 25

;; A linear iterative process to calculate f(n)
(define (f-iterative n)
  (define (f-iter a b c count)
    (if (< count 3)
        a
        (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (f-iter 2 1 0 n))

(f-iterative 5) ;Value: 25


