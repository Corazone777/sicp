#lang scheme
;;sum function
(define (sum x y) (* x y))
;;square 

(define (square x) (* x x))
(square 6)

(define (sum_of_squares x y) (+ (square x) (square y)))
(sum_of_squares 3 4)

;;case analysis
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x)))) 

(define (bss x)
  (cond ((< x 0) (- x))
        (else x)))

(define (abss x)
  (if (< x 0)
      (- x)
      x))


(abs -5)
(bss 5)
(abss 5)


;define greather or equal

;(define (>= x y)
  ;(or (> x y) (= x y)))

(define (>= x y)
  (not (< x y)))

(>= 4 5)
(>= 10 9)
(>= 5 5)
