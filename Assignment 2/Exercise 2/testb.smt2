(define dist::(-> int int int))
(define matrix::(-> int int int))

(assert (= (dist 0 0) 0))
(assert (= (dist 0 1) 29))
(assert (= (dist 0 2) 21))
(assert (= (dist 0 3) -1))
(assert (= (dist 1 0) 29))
(assert (= (dist 1 1) 0))
(assert (= (dist 1 2) 17))
(assert (= (dist 1 3) 32))
(assert (= (dist 2 0) 21))
(assert (= (dist 2 1) 17))
(assert (= (dist 2 2) 0))
(assert (= (dist 2 3) 37))
(assert (= (dist 3 0) -1))
(assert (= (dist 3 1) 32))
(assert (= (dist 3 2) 37))
(assert (= (dist 3 3) 0))

(assert (= (matrix 0 0) -1))
(assert (= (matrix 0 1) 50))
(assert (= (matrix 0 2) 40))
(assert (= (matrix 0 3) 150))
(assert (= (matrix 0 4) 320))
(assert (= (matrix 0 5) 0))

(assert (= (matrix 1 0) (- 0 1)))
(assert (> (matrix 1 1) 0))
(assert (>= (matrix 1 1) (if (=(matrix 1 5) 1) (- (matrix 0 4) (matrix 1 4)) 1)))
(assert (<= (matrix 1 1) 120))
(assert (= (matrix 1 1) (+ (matrix 0 1) (- 0 (dist (matrix 0 5) (matrix 1 5)))(if (=(matrix 1 5) 1) (- (matrix 0 4) (matrix 1 4)) 0))))
(assert (> (matrix 1 2) 0))
(assert (>= (matrix 1 2) (if (=(matrix 1 5) 2) (- (matrix 0 4) (matrix 1 4)) 1)))
(assert (<= (matrix 1 2) 120))
(assert (= (matrix 1 2) (+ (matrix 0 2) (- 0 (dist (matrix 0 5) (matrix 1 5)))(if (=(matrix 1 5) 2) (- (matrix 0 4) (matrix 1 4)) 0))))
(assert (> (matrix 1 3) 0))
(assert (>= (matrix 1 3) (if (=(matrix 1 5) 3) (- (matrix 0 4) (matrix 1 4)) 1)))
(assert (<= (matrix 1 3) 200))
(assert (= (matrix 1 3) (+ (matrix 0 3) (- 0 (dist (matrix 0 5) (matrix 1 5)))(if (=(matrix 1 5) 3) (- (matrix 0 4) (matrix 1 4)) 0))))
(assert (> (dist (matrix 0 5) (matrix 1 5)) 0))
(assert (or
(= (matrix 1 5) 0)
(= (matrix 1 5) 1)
(= (matrix 1 5) 2)
(= (matrix 1 5) 3)
))
(assert (>= (matrix 1 4) (if (< (matrix 1 (matrix 1 5))0) 320 0)))
(assert (<= (matrix 1 4) (if (< (matrix 1 (matrix 1 5))0) 320 (matrix 0 4))))

(assert (= (matrix 2 0) (- 0 1)))
(assert (> (matrix 2 1) 0))
(assert (>= (matrix 2 1) (if (=(matrix 2 5) 1) (- (matrix 1 4) (matrix 2 4)) 1)))
(assert (<= (matrix 2 1) 120))
(assert (= (matrix 2 1) (+ (matrix 1 1) (- 0 (dist (matrix 1 5) (matrix 2 5)))(if (=(matrix 2 5) 1) (- (matrix 1 4) (matrix 2 4)) 0))))
(assert (> (matrix 2 2) 0))
(assert (>= (matrix 2 2) (if (=(matrix 2 5) 2) (- (matrix 1 4) (matrix 2 4)) 1)))
(assert (<= (matrix 2 2) 120))
(assert (= (matrix 2 2) (+ (matrix 1 2) (- 0 (dist (matrix 1 5) (matrix 2 5)))(if (=(matrix 2 5) 2) (- (matrix 1 4) (matrix 2 4)) 0))))
(assert (> (matrix 2 3) 0))
(assert (>= (matrix 2 3) (if (=(matrix 2 5) 3) (- (matrix 1 4) (matrix 2 4)) 1)))
(assert (<= (matrix 2 3) 200))
(assert (= (matrix 2 3) (+ (matrix 1 3) (- 0 (dist (matrix 1 5) (matrix 2 5)))(if (=(matrix 2 5) 3) (- (matrix 1 4) (matrix 2 4)) 0))))
(assert (> (dist (matrix 1 5) (matrix 2 5)) 0))
(assert (or
(= (matrix 2 5) 0)
(= (matrix 2 5) 1)
(= (matrix 2 5) 2)
(= (matrix 2 5) 3)
))
(assert (>= (matrix 2 4) (if (< (matrix 2 (matrix 2 5))0) 320 0)))
(assert (<= (matrix 2 4) (if (< (matrix 2 (matrix 2 5))0) 320 (matrix 1 4))))

(assert (= (matrix 3 0) (- 0 1)))
(assert (> (matrix 3 1) 0))
(assert (>= (matrix 3 1) (if (=(matrix 3 5) 1) (- (matrix 2 4) (matrix 3 4)) 1)))
(assert (<= (matrix 3 1) 120))
(assert (= (matrix 3 1) (+ (matrix 2 1) (- 0 (dist (matrix 2 5) (matrix 3 5)))(if (=(matrix 3 5) 1) (- (matrix 2 4) (matrix 3 4)) 0))))
(assert (> (matrix 3 2) 0))
(assert (>= (matrix 3 2) (if (=(matrix 3 5) 2) (- (matrix 2 4) (matrix 3 4)) 1)))
(assert (<= (matrix 3 2) 120))
(assert (= (matrix 3 2) (+ (matrix 2 2) (- 0 (dist (matrix 2 5) (matrix 3 5)))(if (=(matrix 3 5) 2) (- (matrix 2 4) (matrix 3 4)) 0))))
(assert (> (matrix 3 3) 0))
(assert (>= (matrix 3 3) (if (=(matrix 3 5) 3) (- (matrix 2 4) (matrix 3 4)) 1)))
(assert (<= (matrix 3 3) 200))
(assert (= (matrix 3 3) (+ (matrix 2 3) (- 0 (dist (matrix 2 5) (matrix 3 5)))(if (=(matrix 3 5) 3) (- (matrix 2 4) (matrix 3 4)) 0))))
(assert (> (dist (matrix 2 5) (matrix 3 5)) 0))
(assert (or
(= (matrix 3 5) 0)
(= (matrix 3 5) 1)
(= (matrix 3 5) 2)
(= (matrix 3 5) 3)
))
(assert (>= (matrix 3 4) (if (< (matrix 3 (matrix 3 5))0) 320 0)))
(assert (<= (matrix 3 4) (if (< (matrix 3 (matrix 3 5))0) 320 (matrix 2 4))))

(assert (= (matrix 4 0) (- 0 1)))
(assert (> (matrix 4 1) 0))
(assert (>= (matrix 4 1) (if (=(matrix 4 5) 1) (- (matrix 3 4) (matrix 4 4)) 1)))
(assert (<= (matrix 4 1) 120))
(assert (= (matrix 4 1) (+ (matrix 3 1) (- 0 (dist (matrix 3 5) (matrix 4 5)))(if (=(matrix 4 5) 1) (- (matrix 3 4) (matrix 4 4)) 0))))
(assert (> (matrix 4 2) 0))
(assert (>= (matrix 4 2) (if (=(matrix 4 5) 2) (- (matrix 3 4) (matrix 4 4)) 1)))
(assert (<= (matrix 4 2) 120))
(assert (= (matrix 4 2) (+ (matrix 3 2) (- 0 (dist (matrix 3 5) (matrix 4 5)))(if (=(matrix 4 5) 2) (- (matrix 3 4) (matrix 4 4)) 0))))
(assert (> (matrix 4 3) 0))
(assert (>= (matrix 4 3) (if (=(matrix 4 5) 3) (- (matrix 3 4) (matrix 4 4)) 1)))
(assert (<= (matrix 4 3) 200))
(assert (= (matrix 4 3) (+ (matrix 3 3) (- 0 (dist (matrix 3 5) (matrix 4 5)))(if (=(matrix 4 5) 3) (- (matrix 3 4) (matrix 4 4)) 0))))
(assert (> (dist (matrix 3 5) (matrix 4 5)) 0))
(assert (or
(= (matrix 4 5) 0)
(= (matrix 4 5) 1)
(= (matrix 4 5) 2)
(= (matrix 4 5) 3)
))
(assert (>= (matrix 4 4) (if (< (matrix 4 (matrix 4 5))0) 320 0)))
(assert (<= (matrix 4 4) (if (< (matrix 4 (matrix 4 5))0) 320 (matrix 3 4))))

(assert (= (matrix 5 0) (- 0 1)))
(assert (> (matrix 5 1) 0))
(assert (>= (matrix 5 1) (if (=(matrix 5 5) 1) (- (matrix 4 4) (matrix 5 4)) 1)))
(assert (<= (matrix 5 1) 120))
(assert (= (matrix 5 1) (+ (matrix 4 1) (- 0 (dist (matrix 4 5) (matrix 5 5)))(if (=(matrix 5 5) 1) (- (matrix 4 4) (matrix 5 4)) 0))))
(assert (> (matrix 5 2) 0))
(assert (>= (matrix 5 2) (if (=(matrix 5 5) 2) (- (matrix 4 4) (matrix 5 4)) 1)))
(assert (<= (matrix 5 2) 120))
(assert (= (matrix 5 2) (+ (matrix 4 2) (- 0 (dist (matrix 4 5) (matrix 5 5)))(if (=(matrix 5 5) 2) (- (matrix 4 4) (matrix 5 4)) 0))))
(assert (> (matrix 5 3) 0))
(assert (>= (matrix 5 3) (if (=(matrix 5 5) 3) (- (matrix 4 4) (matrix 5 4)) 1)))
(assert (<= (matrix 5 3) 200))
(assert (= (matrix 5 3) (+ (matrix 4 3) (- 0 (dist (matrix 4 5) (matrix 5 5)))(if (=(matrix 5 5) 3) (- (matrix 4 4) (matrix 5 4)) 0))))
(assert (> (dist (matrix 4 5) (matrix 5 5)) 0))
(assert (or
(= (matrix 5 5) 0)
(= (matrix 5 5) 1)
(= (matrix 5 5) 2)
(= (matrix 5 5) 3)
))
(assert (>= (matrix 5 4) (if (< (matrix 5 (matrix 5 5))0) 320 0)))
(assert (<= (matrix 5 4) (if (< (matrix 5 (matrix 5 5))0) 320 (matrix 4 4))))

(assert (= (matrix 6 0) (- 0 1)))
(assert (> (matrix 6 1) 0))
(assert (>= (matrix 6 1) (if (=(matrix 6 5) 1) (- (matrix 5 4) (matrix 6 4)) 1)))
(assert (<= (matrix 6 1) 120))
(assert (= (matrix 6 1) (+ (matrix 5 1) (- 0 (dist (matrix 5 5) (matrix 6 5)))(if (=(matrix 6 5) 1) (- (matrix 5 4) (matrix 6 4)) 0))))
(assert (> (matrix 6 2) 0))
(assert (>= (matrix 6 2) (if (=(matrix 6 5) 2) (- (matrix 5 4) (matrix 6 4)) 1)))
(assert (<= (matrix 6 2) 120))
(assert (= (matrix 6 2) (+ (matrix 5 2) (- 0 (dist (matrix 5 5) (matrix 6 5)))(if (=(matrix 6 5) 2) (- (matrix 5 4) (matrix 6 4)) 0))))
(assert (> (matrix 6 3) 0))
(assert (>= (matrix 6 3) (if (=(matrix 6 5) 3) (- (matrix 5 4) (matrix 6 4)) 1)))
(assert (<= (matrix 6 3) 200))
(assert (= (matrix 6 3) (+ (matrix 5 3) (- 0 (dist (matrix 5 5) (matrix 6 5)))(if (=(matrix 6 5) 3) (- (matrix 5 4) (matrix 6 4)) 0))))
(assert (> (dist (matrix 5 5) (matrix 6 5)) 0))
(assert (or
(= (matrix 6 5) 0)
(= (matrix 6 5) 1)
(= (matrix 6 5) 2)
(= (matrix 6 5) 3)
))
(assert (>= (matrix 6 4) (if (< (matrix 6 (matrix 6 5))0) 320 0)))
(assert (<= (matrix 6 4) (if (< (matrix 6 (matrix 6 5))0) 320 (matrix 5 4))))

(assert (= (matrix 7 0) (- 0 1)))
(assert (> (matrix 7 1) 0))
(assert (>= (matrix 7 1) (if (=(matrix 7 5) 1) (- (matrix 6 4) (matrix 7 4)) 1)))
(assert (<= (matrix 7 1) 120))
(assert (= (matrix 7 1) (+ (matrix 6 1) (- 0 (dist (matrix 6 5) (matrix 7 5)))(if (=(matrix 7 5) 1) (- (matrix 6 4) (matrix 7 4)) 0))))
(assert (> (matrix 7 2) 0))
(assert (>= (matrix 7 2) (if (=(matrix 7 5) 2) (- (matrix 6 4) (matrix 7 4)) 1)))
(assert (<= (matrix 7 2) 120))
(assert (= (matrix 7 2) (+ (matrix 6 2) (- 0 (dist (matrix 6 5) (matrix 7 5)))(if (=(matrix 7 5) 2) (- (matrix 6 4) (matrix 7 4)) 0))))
(assert (> (matrix 7 3) 0))
(assert (>= (matrix 7 3) (if (=(matrix 7 5) 3) (- (matrix 6 4) (matrix 7 4)) 1)))
(assert (<= (matrix 7 3) 200))
(assert (= (matrix 7 3) (+ (matrix 6 3) (- 0 (dist (matrix 6 5) (matrix 7 5)))(if (=(matrix 7 5) 3) (- (matrix 6 4) (matrix 7 4)) 0))))
(assert (> (dist (matrix 6 5) (matrix 7 5)) 0))
(assert (or
(= (matrix 7 5) 0)
(= (matrix 7 5) 1)
(= (matrix 7 5) 2)
(= (matrix 7 5) 3)
))
(assert (>= (matrix 7 4) (if (< (matrix 7 (matrix 7 5))0) 320 0)))
(assert (<= (matrix 7 4) (if (< (matrix 7 (matrix 7 5))0) 320 (matrix 6 4))))

(assert (= (matrix 8 0) (- 0 1)))
(assert (> (matrix 8 1) 0))
(assert (>= (matrix 8 1) (if (=(matrix 8 5) 1) (- (matrix 7 4) (matrix 8 4)) 1)))
(assert (<= (matrix 8 1) 120))
(assert (= (matrix 8 1) (+ (matrix 7 1) (- 0 (dist (matrix 7 5) (matrix 8 5)))(if (=(matrix 8 5) 1) (- (matrix 7 4) (matrix 8 4)) 0))))
(assert (> (matrix 8 2) 0))
(assert (>= (matrix 8 2) (if (=(matrix 8 5) 2) (- (matrix 7 4) (matrix 8 4)) 1)))
(assert (<= (matrix 8 2) 120))
(assert (= (matrix 8 2) (+ (matrix 7 2) (- 0 (dist (matrix 7 5) (matrix 8 5)))(if (=(matrix 8 5) 2) (- (matrix 7 4) (matrix 8 4)) 0))))
(assert (> (matrix 8 3) 0))
(assert (>= (matrix 8 3) (if (=(matrix 8 5) 3) (- (matrix 7 4) (matrix 8 4)) 1)))
(assert (<= (matrix 8 3) 200))
(assert (= (matrix 8 3) (+ (matrix 7 3) (- 0 (dist (matrix 7 5) (matrix 8 5)))(if (=(matrix 8 5) 3) (- (matrix 7 4) (matrix 8 4)) 0))))
(assert (> (dist (matrix 7 5) (matrix 8 5)) 0))
(assert (or
(= (matrix 8 5) 0)
(= (matrix 8 5) 1)
(= (matrix 8 5) 2)
(= (matrix 8 5) 3)
))
(assert (>= (matrix 8 4) (if (< (matrix 8 (matrix 8 5))0) 320 0)))
(assert (<= (matrix 8 4) (if (< (matrix 8 (matrix 8 5))0) 320 (matrix 7 4))))

(assert (= (matrix 9 0) (- 0 1)))
(assert (> (matrix 9 1) 0))
(assert (>= (matrix 9 1) (if (=(matrix 9 5) 1) (- (matrix 8 4) (matrix 9 4)) 1)))
(assert (<= (matrix 9 1) 120))
(assert (= (matrix 9 1) (+ (matrix 8 1) (- 0 (dist (matrix 8 5) (matrix 9 5)))(if (=(matrix 9 5) 1) (- (matrix 8 4) (matrix 9 4)) 0))))
(assert (> (matrix 9 2) 0))
(assert (>= (matrix 9 2) (if (=(matrix 9 5) 2) (- (matrix 8 4) (matrix 9 4)) 1)))
(assert (<= (matrix 9 2) 120))
(assert (= (matrix 9 2) (+ (matrix 8 2) (- 0 (dist (matrix 8 5) (matrix 9 5)))(if (=(matrix 9 5) 2) (- (matrix 8 4) (matrix 9 4)) 0))))
(assert (> (matrix 9 3) 0))
(assert (>= (matrix 9 3) (if (=(matrix 9 5) 3) (- (matrix 8 4) (matrix 9 4)) 1)))
(assert (<= (matrix 9 3) 200))
(assert (= (matrix 9 3) (+ (matrix 8 3) (- 0 (dist (matrix 8 5) (matrix 9 5)))(if (=(matrix 9 5) 3) (- (matrix 8 4) (matrix 9 4)) 0))))
(assert (> (dist (matrix 8 5) (matrix 9 5)) 0))
(assert (or
(= (matrix 9 5) 0)
(= (matrix 9 5) 1)
(= (matrix 9 5) 2)
(= (matrix 9 5) 3)
))
(assert (>= (matrix 9 4) (if (< (matrix 9 (matrix 9 5))0) 320 0)))
(assert (<= (matrix 9 4) (if (< (matrix 9 (matrix 9 5))0) 320 (matrix 8 4))))

(assert (= (matrix 10 0) (- 0 1)))
(assert (> (matrix 10 1) 0))
(assert (>= (matrix 10 1) (if (=(matrix 10 5) 1) (- (matrix 9 4) (matrix 10 4)) 1)))
(assert (<= (matrix 10 1) 120))
(assert (= (matrix 10 1) (+ (matrix 9 1) (- 0 (dist (matrix 9 5) (matrix 10 5)))(if (=(matrix 10 5) 1) (- (matrix 9 4) (matrix 10 4)) 0))))
(assert (> (matrix 10 2) 0))
(assert (>= (matrix 10 2) (if (=(matrix 10 5) 2) (- (matrix 9 4) (matrix 10 4)) 1)))
(assert (<= (matrix 10 2) 120))
(assert (= (matrix 10 2) (+ (matrix 9 2) (- 0 (dist (matrix 9 5) (matrix 10 5)))(if (=(matrix 10 5) 2) (- (matrix 9 4) (matrix 10 4)) 0))))
(assert (> (matrix 10 3) 0))
(assert (>= (matrix 10 3) (if (=(matrix 10 5) 3) (- (matrix 9 4) (matrix 10 4)) 1)))
(assert (<= (matrix 10 3) 200))
(assert (= (matrix 10 3) (+ (matrix 9 3) (- 0 (dist (matrix 9 5) (matrix 10 5)))(if (=(matrix 10 5) 3) (- (matrix 9 4) (matrix 10 4)) 0))))
(assert (> (dist (matrix 9 5) (matrix 10 5)) 0))
(assert (or
(= (matrix 10 5) 0)
(= (matrix 10 5) 1)
(= (matrix 10 5) 2)
(= (matrix 10 5) 3)
))
(assert (>= (matrix 10 4) (if (< (matrix 10 (matrix 10 5))0) 320 0)))
(assert (<= (matrix 10 4) (if (< (matrix 10 (matrix 10 5))0) 320 (matrix 9 4))))

(assert (= (matrix 11 0) (- 0 1)))
(assert (> (matrix 11 1) 0))
(assert (>= (matrix 11 1) (if (=(matrix 11 5) 1) (- (matrix 10 4) (matrix 11 4)) 1)))
(assert (<= (matrix 11 1) 120))
(assert (= (matrix 11 1) (+ (matrix 10 1) (- 0 (dist (matrix 10 5) (matrix 11 5)))(if (=(matrix 11 5) 1) (- (matrix 10 4) (matrix 11 4)) 0))))
(assert (> (matrix 11 2) 0))
(assert (>= (matrix 11 2) (if (=(matrix 11 5) 2) (- (matrix 10 4) (matrix 11 4)) 1)))
(assert (<= (matrix 11 2) 120))
(assert (= (matrix 11 2) (+ (matrix 10 2) (- 0 (dist (matrix 10 5) (matrix 11 5)))(if (=(matrix 11 5) 2) (- (matrix 10 4) (matrix 11 4)) 0))))
(assert (> (matrix 11 3) 0))
(assert (>= (matrix 11 3) (if (=(matrix 11 5) 3) (- (matrix 10 4) (matrix 11 4)) 1)))
(assert (<= (matrix 11 3) 200))
(assert (= (matrix 11 3) (+ (matrix 10 3) (- 0 (dist (matrix 10 5) (matrix 11 5)))(if (=(matrix 11 5) 3) (- (matrix 10 4) (matrix 11 4)) 0))))
(assert (> (dist (matrix 10 5) (matrix 11 5)) 0))
(assert (or
(= (matrix 11 5) 0)
(= (matrix 11 5) 1)
(= (matrix 11 5) 2)
(= (matrix 11 5) 3)
))
(assert (>= (matrix 11 4) (if (< (matrix 11 (matrix 11 5))0) 320 0)))
(assert (<= (matrix 11 4) (if (< (matrix 11 (matrix 11 5))0) 320 (matrix 10 4))))

(assert (or
(and
(= (matrix 11 1) (matrix 0 1))
(= (matrix 11 2) (matrix 0 2))
(= (matrix 11 3) (matrix 0 3))
(= (matrix 11 4) (matrix 0 4))
(= (matrix 11 5) (matrix 0 5))
)
(and
(= (matrix 11 1) (matrix 1 1))
(= (matrix 11 2) (matrix 1 2))
(= (matrix 11 3) (matrix 1 3))
(= (matrix 11 4) (matrix 1 4))
(= (matrix 11 5) (matrix 1 5))
)
(and
(= (matrix 11 1) (matrix 2 1))
(= (matrix 11 2) (matrix 2 2))
(= (matrix 11 3) (matrix 2 3))
(= (matrix 11 4) (matrix 2 4))
(= (matrix 11 5) (matrix 2 5))
)
(and
(= (matrix 11 1) (matrix 3 1))
(= (matrix 11 2) (matrix 3 2))
(= (matrix 11 3) (matrix 3 3))
(= (matrix 11 4) (matrix 3 4))
(= (matrix 11 5) (matrix 3 5))
)
(and
(= (matrix 11 1) (matrix 4 1))
(= (matrix 11 2) (matrix 4 2))
(= (matrix 11 3) (matrix 4 3))
(= (matrix 11 4) (matrix 4 4))
(= (matrix 11 5) (matrix 4 5))
)
(and
(= (matrix 11 1) (matrix 5 1))
(= (matrix 11 2) (matrix 5 2))
(= (matrix 11 3) (matrix 5 3))
(= (matrix 11 4) (matrix 5 4))
(= (matrix 11 5) (matrix 5 5))
)
(and
(= (matrix 11 1) (matrix 6 1))
(= (matrix 11 2) (matrix 6 2))
(= (matrix 11 3) (matrix 6 3))
(= (matrix 11 4) (matrix 6 4))
(= (matrix 11 5) (matrix 6 5))
)
(and
(= (matrix 11 1) (matrix 7 1))
(= (matrix 11 2) (matrix 7 2))
(= (matrix 11 3) (matrix 7 3))
(= (matrix 11 4) (matrix 7 4))
(= (matrix 11 5) (matrix 7 5))
)
(and
(= (matrix 11 1) (matrix 8 1))
(= (matrix 11 2) (matrix 8 2))
(= (matrix 11 3) (matrix 8 3))
(= (matrix 11 4) (matrix 8 4))
(= (matrix 11 5) (matrix 8 5))
)
(and
(= (matrix 11 1) (matrix 9 1))
(= (matrix 11 2) (matrix 9 2))
(= (matrix 11 3) (matrix 9 3))
(= (matrix 11 4) (matrix 9 4))
(= (matrix 11 5) (matrix 9 5))
)
(and
(= (matrix 11 1) (matrix 10 1))
(= (matrix 11 2) (matrix 10 2))
(= (matrix 11 3) (matrix 10 3))
(= (matrix 11 4) (matrix 10 4))
(= (matrix 11 5) (matrix 10 5))
)
))

(check)
