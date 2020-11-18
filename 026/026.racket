#lang racket/base
      
(define (range a b)
	(if (> a b)
		null
		(cons a (range (+ 1 a) b))
	)
)

(define (prime? n)
    (cond [(< n 1) #f]
    	[(= n 2) #t]
    	[else (not (member #t (
    		map (lambda (i) (= (modulo n i) 0)) (range 2 (integer-sqrt n))
    	)))]
    )
)

(define (multiplicative-order-helper n count modulus)
	(if (= n 1)
		count
		(multiplicative-order-helper (modulo (* n 10) modulus) (+ count 1) modulus)
	)
)

(define (multiplicative-order n) 
	(multiplicative-order-helper 10 1 n)
)

(define zip
	(lambda (l1 l2) (map list l1 l2))
)

(define (pairmax pair1 pair2)
	(if (> (car (cdr pair1)) (car (cdr pair2))) pair1 pair2)
)

(define primes (filter prime? (range 7 1000)))
(define functionpairs (zip primes (map multiplicative-order primes)))
(display (car (foldl pairmax (car functionpairs) (cdr functionpairs))))
