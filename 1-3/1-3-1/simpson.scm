(define (simpson f a b n)
    (define h 
        (/ (- b a) n))

    (define (y k)
        (f (+ a (* k h))))

    (define (sector k)
        (cond ((or (= k 0) (= k n)) 1)
              ((= (remainder k 2) 0) 2)
              ((= (remainder k 2) 1) 4)))

    (define (term k)
        (* (sector k) (y k)))
    
    (define (inc x)
        (+ x 1))

    (* (/ h 3) (sum term 0 inc n)))

(define (sum term a next b)
    (if (> a b) 0
            (+ (term a) (sum term (next a) next b))))

(define (cube n)
    (* n n n))
