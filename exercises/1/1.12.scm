(define (pascal x y)
  (cond ((or (= x 0) (= y 0) (= x y)) 1)
        ((> y x) 0)
        (else (+ (pascal (- x 1) (- y 1))
                 (pascal (- x 1) y)))))

(pascal 0 0) ;Value: 1

(pascal 4 2) ;Value: 6

(pascal 5 2) ;Value: 10

(pascal 10 2) ;Value: 45

(pascal 10 4) ;Value: 210


