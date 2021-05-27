#lang racket
(
  define (function a b c)
   (- a b c)
)

(function 12 4 -6)
(define d -14)
(+ d (function 13 5 -7))
(* d (function 13 5 -7))
(/ d (function 13 5 -7))
(sqrt (function 13 5 -7))
(+ pi (function 13 5 -7))
