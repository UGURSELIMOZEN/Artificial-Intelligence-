;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname list-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define a(list 3 22 3 "b" 5 "q"))
a
(first a)
(rest a)
(car a)
(cdr a)
(define b(append (list 12 "s") a ))
b
(first b)
(rest b)
(cons 10 a)
(first a)
(cons (list 3) b)
(first b)
