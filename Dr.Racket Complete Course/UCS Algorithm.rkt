;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname |UCS ALGORITHM|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))

(define maps (list(list 1 2 1)(list 1 3 3)(list 2 7 8)(list 2 3 2)(list 3 5 1)(list 2 4 12)(list 3 2 2)))

(define (alternative list node) (if(empty? list)
                                   list
                                   (if(= node (first(first list)))
                                      (cons (rest(first list)) (alternative (rest list) node))
                                      (alternative (rest list) node))))

(define (comparemin list1 list2) (if(empty? list2)
                                    list1
                                   (if(> (first(rest list1)) (first(rest list2)) ) list2 list1)))  

 (define (findmin list) (if(empty? list)
                           list
                           (comparemin (first list) (findmin (rest list)))))

(alternative maps 1)
(findmin(alternative maps 1))

(define(ucs list snode fnode) (if(empty? list)
                                list
                                 (cons snode
                                     (if(empty? (alternative list snode))
                                      null
                                        (if (= fnode (first(findmin(alternative list snode))))
                                  (findmin(alternative list snode))    
                                 (ucs list (first(findmin(alternative list snode))) fnode))))))

(ucs maps 1 5)
