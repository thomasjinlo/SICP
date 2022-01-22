#lang racket

; 1.1
(display "exercise 1.1\n")
(= 10 10)
(= (+ 5 3 4) 12)
(= (- 9 1) 8)
(= (+ (* 2 4) (- 4 6)) 6)
(define a 3)
(= a 3)
(define b (+ a 1))
(= b 4)
(= (+ a b (* a b)) 19)
(boolean? (= a b))

; 1.2
(display "exercise 1.2\n")
(/ (+ 5
      4
      (- 2
         (- 3
            (+ 6
               (/ 4 5)))))
   (* 3
      (- 6 2)
      (- 2 7)))

; 1.3
(display "exercise 1.3\n")
(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (sum-of-two-largest a b c)
        (cond ((and (<= a b) (<= a c)) (sum-of-squares b c))
              ((and (<= b a) (<= b c)) (sum-of-squares a c))
              ((and (<= c a) (<= c b)) (sum-of-squares a b))))

; 1.4
; (define (a-plus-abs-b a b)
;         ((if (> b 0) + -) a b))
; if b is greater than 0, a + b, otherwise, a - b

; 1.5
; (define (p) (p))
; (define (test x y)
;         (if (= x 0)
;              0
;              y))
;
; (test 0 (p))
; If using normal order, this will return 0, as p does not need to be evaluated.
; If using applicative order, this will never evaluate as p will infinitely evaluate to itself.
