(define (fib n) 
    (fib-iter n 0 1))

(define (fib-iter n a b)
    (cond ((= n 0) a)
          ((= n 1) b) 
          ((> n 1) (fib-iter (- n 1) b (+ a b )))))
