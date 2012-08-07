This is the Scheme process buffer.
Type C-x C-e to evaluate the expression before point.
Type C-c C-c to abort evaluation.
Type C-h m for more information.

MIT/GNU Scheme running under MacOSX

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

;; A Scheme implementation of cube root using Newton's method
(define (cubert x)
  (define (cubert-iter guess)
    (if (good-enough? guess)
        guess
        (cubert-iter (improve guess))))

  (define (improve guess)
    (/ (+ (/ x (square guess)) 
          (* 2 guess))
       3))

  (define (good-enough? guess)
    (< (/ (abs (- (improve guess) guess)) 
          guess) 
       0.0001))
  (cubert-iter 1.0))
;Value: cubert

(cubert 27)
;Value: 3.0000005410641766

(cubert 64)
;Value: 4.000017449510739

(cubert 0.008)
;Value: .20000009719812561

(cubert 0.001)
;Value: .10000000198565878

(cubert 1000)
;Value: 10.000000145265767

(cubert 1000000)
;Value: 100.000072886219

(cubert 1000000000)
;Value: 1000.0162369748963

(cubert 1000000000000)
;Value: 10000.000334749247


