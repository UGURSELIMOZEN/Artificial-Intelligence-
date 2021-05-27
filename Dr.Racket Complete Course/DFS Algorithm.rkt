;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.


#reader(lib "htdp-advanced-reader.ss" "lang")((modname |DFS ALGORITHM|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))


(define mytree (list 53 (list 23(list 11 '() '())(list 4 '()  '())) (list 17 '() '()) ))
(define (root tree)  (first tree))
(define (left tree)  (first(rest tree)))
(define (right tree) (first(rest(rest tree))))

(define (counter atree) (if(empty? atree) 0
                           (+ (counter (left atree))
                              (counter (right atree))
                              1)))
(counter  mytree)

(define (DFS atree anode) (if(empty? atree) 0
                             (if(> (DFS (left atree) anode) 0) 
                                (DFS (left atree) anode)
                              (if(> (DFS (right atree) anode) 0)
                                 (DFS (right atree) anode)
                             (if(= anode (root atree)) (counter atree) 0)))))
(DFS mytree 4)
(DFS mytree 53)
(DFS mytree 44)
(DFS mytree 11)
(DFS mytree 17)
