(define (sum term a next b)
    (if (> a b) 0
        (+ (term a) (sum term (next a) next b))))

(define (sum-integer a b)
    (sum identity a inc b))

(define (inc x)
    (+ x 1))

(define (identity x)
    x)
    
