;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.


#reader(lib "htdp-advanced-reader.ss" "lang")((modname |CSP ALGORITHM|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))


(define edges (list (list 1 2) (list 1 3) (list 2 4) (list 3 2) (list 3 4)))
(define nodes (list 1 2 3 4))
(define colors (list 1 2 3))
(define solution (list (list 1 1) (list 2 2) (list 3 3) (list 4 1)))
(define (searchfirst edge) (first(first edge)))
(define (searchsecond edge) (first(rest(first edge)))) 
  

(define (komsular node edge) (if(empty? edge)null
                                          (if(= (searchfirst edge) node) (cons (searchsecond edge) (komsular node (rest edge)))
                                           (if(= (searchsecond edge) node) (cons (searchfirst edge) (komsular node (rest edge)))
                                           (komsular node (rest edge))))))
  (komsular 2 edges)

 (define (compare node1 s1) (if(empty? s1)null
                                       (if(= (searchfirst s1) node1) (searchsecond s1) (compare node1 (rest s1)))))
 (compare 4 solution)
 (define (controlhelper node3 komsuliste s3) (if(empty? komsuliste) #true
                                                (if(=  (compare node3 s3) (compare (first komsuliste) s3))
                                                   #false
                                                   (and #true(controlhelper node3 (rest komsuliste) s3)))))

 (define (control node2 edge1 s2) (controlhelper node2 (komsular node2 edge1) s2)) 

 (control 2 edges solution)

 (define (csp nodeliste edgeliste s4) (if(empty? nodeliste) #true
                                         (and(control (first nodeliste) edgeliste s4)
                                         (csp (rest nodeliste) edgeliste s4))))
                                         
  
                                          
  (csp nodes edges solution)
