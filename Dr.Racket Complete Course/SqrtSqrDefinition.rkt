#lang racket
(define a 4)
(define b 3)
a
b
(+ (sqr a) (sqr b))
(define q(+ (* a a) (* b b)))
q
(define z(+ (sqrt a) (sqrt b)))
z
(define v(sqrt (+ (sqr a) (sqr b))))
v
(+ v z)
(+ a v b)
(+ v q z)
