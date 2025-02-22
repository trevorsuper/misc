#lang racket
;; Lc-exp = Identifier | proc Identifier => Lc-exp | Lc-exp (Lc-exp)
(require (lib "eopl.ss" "eopl"))
(define-datatype Lc-exp Lc-exp?
 (id-exp
  (var identifier?))
 (proc-exp
  (bound-var identifier?)
  (body Lc-exp?))
 (inv-exp
  (rator Lc-exp?)
  (rand Lc-exp?)))
(define x-id (id-exp #'x))
(define x-proc (proc-exp #'x x-id))
(define x-inv (inv-exp x-proc x-id))
(identifier? #'x-id)
(identifier? #'x-proc)
(identifier? #'x-inv)
