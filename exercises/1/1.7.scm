This is the Scheme process buffer.
Type C-x C-e to evaluate the expression before point.
Type C-c C-c to abort evaluation.
Type C-h m for more information.

MIT/GNU Scheme running under MacOSX

Copyright (C) 2011 Massachusetts Institute of Technology
This is free software; see the source for copying conditions. There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

;; sqrt-iter performs better for small numbers with the new definition of good-enough? 
;; but seems to perform worse for bigger numbers

(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))

  (define (good-enough? guess)
    (< (/ (abs (- (improve guess) 
                  guess)) 
          guess) 
       0.01))

  (define (improve guess)
    (average guess (/ x guess)))

  (define (average a b)
    (/ (+ a b) 2))

  (sqrt-iter 1.0))
;Value: sqrt


;; Old definition of good-enough?
(sqrt 0.0004)
;Value:  .0354008825558513
(square .0354008825558513)
;Value: 1.2532224857331766e-3

(sqrt 10000000000)
;Value: 100000.
(square 100000)
;Value: 10000000000 

;; New definition of good-enough?
(sqrt 0.0004)
;Value: 2.0001426615330147e-2
(square 2.0001426615330147e-2)
;Value: 4.000570666484372e-4 , i.e. 0.0004000570666...

(sqrt 10000000000)
;Value: 100005.58643074983
(square 100005.58643074983)
;Value: 10001117317.358173, OOPS!














