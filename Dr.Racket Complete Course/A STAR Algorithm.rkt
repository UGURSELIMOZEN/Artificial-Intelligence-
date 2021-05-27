;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.

#reader(lib "htdp-advanced-reader.ss" "lang")((modname |A star algorıthm|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))



(define maps (list(list 1 2 1 12 )(list 1 3 3 5 )(list 2 7 8 6)(list 2 3 4 5)(list 3 5 1 2 )(list 2 4 1 8 )(list 3 2 2 7 )))

(define (alternative list node) (if(empty? list)
                                   list
                                   (if(= node (first(first list)))
                                      (cons (rest(first list)) (alternative (rest list) node))
                                      (alternative (rest list) node))))

(define (comparemin alt1 alt2) (if(empty? alt2)
                                    alt1
                                   (if(> (+ (first(rest alt1)) (first(rest(rest alt1))))  (+ (first(rest alt2)) (first(rest(rest alt2)))))
                                        alt2
                                        alt1)))  

 (define (findmin alist) (if(empty? alist)
                           alist
                           (comparemin (first alist) (findmin (rest alist)))))

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
