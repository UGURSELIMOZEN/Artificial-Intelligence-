;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.


#reader(lib "htdp-advanced-reader.ss" "lang")((modname |BFS ALGORITHM|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))


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
(DFS mytree 44)

(define (countl atree limit) (if(empty? atree) 0
                                (if(= limit 0) 0
                                   (+ 1 (countl (left atree) (- limit 1))
                                      (countl (right atree) (- limit 1))))))
(countl mytree 1)

(define (level atree anode) (if(empty? atree) 0
                               (if(= (root atree) anode) 1
                                  (+ (level (left atree) anode)
                                     (level (right atree) anode)
                                     (if(> (+ (level (left atree) anode) (level (right atree) anode) ) 0)
                                        1 0 )))))
(level mytree 53)

(define (BFS atree anode) (countl atree (level atree anode)))

(BFS mytree 4)
(BFS mytree 17)
(BFS mytree 23)
(BFS mytree 11)
(BFS mytree 53)
