(define (problem p3-2-neg)
  (:domain blocks)
  (:objects b1 b2 b3 - block )
  (:init (clear b1) (ontable b3) (on b1 b2)(on b2 b3)(empty) (green b1)(not-finished))
  (:goal (and (have b3))))