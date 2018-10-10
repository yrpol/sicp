#lang racket

;; Exercise 1.9

(define (inc x) (x + 1))
(define (dec x) (x - 1))

;; Recursive procedure and recursive proccess:

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;; Substitution model for calculating (+ 4 5) (recursive proccess):
;; (+ 4 5)
;; (inc (+ 3 5))
;; (inc (inc (+ 2 5)))
;; (inc (inc (inc (+ 1 5))))
;; (inc (inc (inc (inc (+ 0 5)))))
;; (inc (inc (inc (inc 5))))
;; (inc (inc (inc 6)))
;; (inc (inc 7))
;; (inc 8)
;; 9

;; Recursive procedure and iterative proccess:

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

;; Substitution model for calculating (+ 4 5) (iterative proccess):
;; (+ 4 5)
;; (+ 3 6)
;; (+ 2 7)
;; (+ 1 8)
;; (+ 0 9)
;; 9