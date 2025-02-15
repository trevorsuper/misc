;; returns a list with all occurrences of a given symbol removed from a list of symbols
#lang racket
(define remove
 (lambda (s los)
  (if (null? los)
   `()
   (if (eqv? (car los) s)
    (remove s (cdr los))
    (cons (car los) (remove s (cdr los)))))))
(remove 4 `(1 2 3 4 5 6 4))
(remove 4 `(4 4 4 4 4 4 4))
(remove 4 `(1 4 3 4 5 4 4))