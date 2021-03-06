(define (fast-prime? n times)
    (cond ((= times 0) #t) 
          ((fermat-test n) (fast-prime? n (- times 1)))
          (else #f)))

(define (fermat-test n)
    (define (try-it a)
        (= (expmod a n n) a))
    (try-it (+ (random (- n 1)) 1)))

(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp) (remainder (square (expmod base (/ exp 2) m) ) m))
          ((odd? exp) (remainder (* base (expmod base (- exp 1) m)) m))))
          
(define (square x)
    (* x x))
