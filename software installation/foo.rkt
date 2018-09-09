#lang racket
(provide (all-defined-out))

(define (sum xs)
  (cond [(null? xs) 0]
        [(number? (car xs)) (+ (car xs) (sum (cdr xs)))]
        [#t (+ (sum (car xs)) (sum (cdr xs)))]))

(define (silly-double x)
  (let* ([x (+ x 3)]
         [y (+ x 2)])
      (+ x y -8)))

