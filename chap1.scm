(/
  (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))
  (* 3 (- 6 2) (- 2 7))
)

(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (ex3 a b c)
  (cond
    ; a <= b && a <= c -> b^2+c^2
    ((and (<= a b) (<= a c)) (sum-of-squares b c))
    ; b <= a && b <= c -> a^2+c^2
    ((and (<= b a) (<= b c)) (sum-of-squares a c))
    ; else -> a^2+c^2
    (else (sum-of-squares a c))
  )
)
