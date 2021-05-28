;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname |IncreasingOneEveryElementofList|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define a(list 1 2 3 4 5))
a
(car a)
(define(increaseone l1)
 (if
   (empty? l1)
   '()
   (cons (+ 1 (car l1))(increaseone(rest l1))
 )))

(define b(increaseone a))
b
(car b)
