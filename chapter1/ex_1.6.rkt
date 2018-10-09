#lang racket
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt1 x)
  (sqrt-iter 1.0 x))

(define (square x) (* x x))

// Вопрос заключался в том, что получится, если исползовать вместо if специально созданную процедуру new-if при помощи cond. Если кратко, то получится зацикливание. А вот на вопрос почему так происходит я сейчас попытаюсь ответить.

// Мне кажется, что это происходит так как процедура new-if вызывает саму себя через процедуру sqrt-iter в else-условии. При апликативном порядке вычисления (sqrt-iter (improve guess x) x) будет вычеслено ДО того, как будет начато вычисление new-if, поэтому вычисление не может быть закончено и происходит зацикливание. 
