#lang racket
#true
#false
(define x #true)
(define y #false)
(or x y)(and x y)(or x x)(or y y)(and x x)(and y y)
(or 1 0)(and 1 0)(or 1 1)(and 1 1)(or 0 0)(and 0 0)
