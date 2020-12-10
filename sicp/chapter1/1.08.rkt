#lang sicp

(#%require rackunit)

(define (cube-iter guess x)
    (if (good-enought? guess x)
        guess
        (cube-iter (improve guess x)
        x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (square x) (* x x))

(define (cube x) (* x x x))

(define (good-enought? guess x)
    (< (abs (- (cube guess) x)) 0.001))


(define (cube-root x)
  (cube-iter 1.0 x))

(check-equal? (cube-root 9) 2.0801035255095734)
(check-equal? (cube-root 27) 3.0000005410641766)