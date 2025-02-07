;; lst is a list of lists of length two. returns a list with each length two list reversed
#lang racket
(define invert
 (lambda (lst)
  (if (null? lst)
   `()
   (cons (list (second (car lst)) (first (car lst))) (invert (cdr lst))))))
(invert`((a 1)(a 2)(1 b)(2 b)))