#lang racket
"hello world"
(define c "hello ")
c
(define d " world")
d
(string-append c "_" d)
(string-append "WHAT " "A " " GOAL " "BY CR7" )
(string-length c)
(string-length d)
(string-length (string-append c d))
(+ 14 (string-length(string-append c d)))
(- 13 (string-length(string-append c d)))
(* 3 (string-length(string-append c d)))
(+ 14 (string-length c) (string-length d))
