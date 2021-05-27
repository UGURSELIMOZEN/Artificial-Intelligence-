;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.


#reader(lib "htdp-advanced-reader.ss" "lang")((modname |GAME TREE (TIC-TAC TOE)|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))


(define tahta (list(list  1  1 -1)
                   (list -1 -1 -1)
                   (list -1  0  1) ))

(define (rawcontrol raw) (if(= (first raw) (second raw) (third raw))
                            (first raw) 0 ))

(rawcontrol (first tahta))
(map rawcontrol tahta)
(define (dondur tahta) (list (map first tahta) (map second tahta) (map third tahta) ))
(map rawcontrol (dondur tahta))

(define (kosegen tahta) (if(= (first(first tahta)) (second(second tahta)) (third(third tahta)))
                            (first(first tahta)) 0 ))

(define (tkosegen tahta) (if(= (first(third tahta)) (second(second tahta)) (third(first tahta)))
                            (second(second tahta)) 0 ))

(define (winner tahta) (append(map rawcontrol tahta)
                              (map rawcontrol (dondur tahta))
                              (list(kosegen tahta))
                              (list(tkosegen tahta))))
(winner tahta)

(define (bireindir alist) (if(empty? alist)0
                             (if(not (= (first alist) 0)) (first alist)
                                (bireindir(rest alist)))))
(bireindir(winner tahta))
(define (showwinner tahta) (bireindir(winner tahta)))
(showwinner tahta)
