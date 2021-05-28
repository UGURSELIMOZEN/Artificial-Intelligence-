;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname |ScanningSpecificElementofList|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define mylist (list 33 (list 45 (list 12 '() '()) (list 156 '() '()))
                     (list 123 '() '())))
(define (findroot list) (car list))
(define (searchroot list a) (if (= a (findroot list)) a (print "a is not here!" )))
                              
(define (findleft list) (car(car(rest list))))
(define (searchleft list a) (if (= a (findleft list)) a  (print "a is not here!")))

(define (findright list) (car (rest(rest list))))
(define (searchright list a) (if (= a (findright list)) a  (print "a is not here!")))
                              

(define (findelementroot list a) (searchroot list a ))
(define (findelementleft list a) (searchleft list a ))
(define (findelementright list a) (searchright list a ))

  (findelementroot mylist 156)
  (findelementleft mylist 12)
 (define (findleft1 list) (car(car(rest(car(rest list))))))
 (findleft1 mylist)
