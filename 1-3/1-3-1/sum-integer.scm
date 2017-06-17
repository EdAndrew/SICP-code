(define (sum-integer a b)
    (if (> a b) 0
        (+ (sum (+ a 1) b) a)))
