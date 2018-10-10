#lang racket
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

// В этой функции оператор  выражения (+ или -) зависит от значения оператора b: 
// - если b больше нуля, то производится сложение с операндом a
// - если b меньше нуля, то его знак меняется на противоположный и в итоге также производится сложение с a
