#lang sicp

(#%require rackunit)

(define (function x y z)
  (cond ((and (> x y) (> z y)) (+ (* x x) (* z z)))
        ((and (< x y) (< x z)) (+ (* y y) (* z z)))
        ((and (> x z) (> y z)) (+ (* x x) (* y y)))))

(check-equal? (function 2 4 6) 53)
