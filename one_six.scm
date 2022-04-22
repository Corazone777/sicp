(define (square x) (* x x))

(define (improve guess x)
 (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (= (improve guess x) guess))

;alternative version that runs out of memory because new-if is not special form unlike regular if.
(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))


(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
