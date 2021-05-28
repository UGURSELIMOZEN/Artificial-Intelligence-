;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname |taking square and squareroot of each element of list|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define c(list 4 9 1 16))
(define (f1 a) (sqr a))
(define (f2 b) (sqrt b)) 
(define (apply f list)

(if
 (empty? list)
 '()
 (cons (f(car list)) (apply f (rest list)) )
 
))
(apply f1 c)
(apply f2 c)
