(define (square x) (* x x))

(define (sumsquares x y) (+ (square x) (square y)))

(define (sumofsquares x y z)
  (sumsquares (max x y)
              (max (min x y) z)))


(sumofsquares 2 3 4)
