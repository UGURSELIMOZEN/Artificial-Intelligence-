;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname list-tree-structure) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(list 1 '() '())
(define a1 (list 1 (list 12 '() '()) (list 40 '() '()) ))
(define (findroot a)(car a))
(findroot a1)
(define (add a)
  (if
   (empty? a)0
  
  (+ (car a) (add (car(rest a)))  (add (car(rest(rest a)))))       
))
(add a1)
