#lang racket
(define (fibonacci n)
 (if (= n 1)1
  (if (= n 2)1
  (+ (fibonacci(- n 1)) (fibonacci(- n 2)))
)
)
)
(+   (fibonacci 7) (fibonacci 8) )
(fibonacci 6)
(+ (fibonacci 1) (fibonacci 2) )
