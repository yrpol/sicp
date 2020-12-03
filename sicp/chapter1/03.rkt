#lang planet neil/sicp

(define (function x y z)
  (cond ((and (> x y) (> z y)) (+ (* x x) (* z z)))
        ((and (< x y) (< x z)) (+ (* y y) (* z z)))
        ((and (> x z) (> y z)) (+ (* x x) (* y y)))))
