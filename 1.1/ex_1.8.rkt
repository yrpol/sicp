#lang racket
;; Exercise 1.8
;; Implement a cube-root function using Newton's method for cube roots,
;; which uses the approximation function:
;; (x/(y^2) + 2y) / 3

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- guess (improve guess x))) 0.000000000001))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(define (square x)
  (* x x))