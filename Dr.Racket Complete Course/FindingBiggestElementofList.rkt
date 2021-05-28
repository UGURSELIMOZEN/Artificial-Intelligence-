;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname |finding biggest element of list|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define mylist (list 33 (list 45 (list 12 '() '()) (list 156 '() '()))
                     (list 123 '() '())))
(define (root list)(car list))
(define (left list)(car (rest list)))
(define (right list)(car (rest(rest list))))
(define (compare a b)(if (> a b) a b))
(define (compare1 a b c) (compare (compare a b) (compare b c)))
(define (findbiggest list)(if(empty? list) 0
                             (compare1
                              (root list)
                              (findbiggest(left list))
                              (findbiggest(right list)))))
  (findbiggest mylist)
