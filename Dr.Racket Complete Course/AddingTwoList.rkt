;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname |addingtwolist|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define x (list 2 3 4 6 12 ))
(define y (list 1 7 3 2 ))
(define (add  list1 list2)
(cond
  [(empty? list1) list2]
  [(empty? list2) list1]
  [else(cons (+ (car list1) (car list2)) (add (rest list1) (rest list2)) )]
))

(add x y)
