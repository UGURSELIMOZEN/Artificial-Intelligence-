#lang racket
(* (+ (string-length (number->string 42)) 1) pi)
(define a 3)
(define b 4)
(define c 0.7)
(if
 (> c 1)
 (print "all Okey!")
 (* c 1.2)
)
(if
 (= a b)
 (print "a is equal to b")
 (print "a is not equal to b")
)

(cond
  [(> a b) (print "a is greater than b")]
  [(> a c) (print "a is greater than c")]
  [(> b c) (print "b is greater than c")]
) 
