#lang sicp

(#%require rackunit)

(define (sqrt-iter guess x)
    (if (good-enought? guess x)
        guess
        (sqrt-iter (improve guess x)
                    x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enought? guess x)
    (< (abs (- guess (improve guess x))) 0.0001))


(check-equal? (sqrt-iter 1.0 9) 3.00009155413138)
(check-equal? (sqrt-iter 1.0 137) 11.704699917758145)