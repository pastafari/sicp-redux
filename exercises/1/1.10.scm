; Ackermann's function http://en.wikipedia.org/wiki/Ackermann_function

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10); Value: 1024
(A 2 4); Value: 65536
(A 3 3); Value: 65536

(define (f n) (A 0 n)) ;(f n) computes 2n
(f 1) ;;Value: 2
(f 2) ;;Value: 4
(f 3) ;;Value: 6
(f 4) ;;Value: 8

(define (g n) (A 1 n)); (g n) computes 2^n
(g 1);Value: 2
(g 2);Value: 4
(g 3);Value: 8
(g 4);Value: 16
(g 5);Value: 32


(define (h n) (A 2 n)); (h n) computes 2^(2^(2^(2....))) n times. Also
                      ; called tetration. H/T to Sidhant Godiwala
(h 1) ;Value: 2
(h 2) ;Value: 4
(h 3) ;Value: 16
(h 4) ;Value: 65536
(h 5) ;Aborting!: maximum recursion depth exceeded

(define (k n) (* 5 n n)); (k n) trivially computes 5n^2
(k 1);Value: 5
(k 2);Value: 20
(k 3);Value: 45
(k 4);Value: 80
(k 5);Value: 125
