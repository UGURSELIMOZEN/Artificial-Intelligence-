#lang racket
(number->string 12345)
(define char "melıke ")
(string-length char)
(string-length (number->string 45.8))
(string-append char (number->string 58))

(+  (string-length char) (string-length (number->string 34.5)) 3.4)
