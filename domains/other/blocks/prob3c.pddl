(define (problem p3c-09092015162748)
  (:domain blocks)
  (:objects b1 b2 b3 - block )
  (:init (clear b3) (ontable b1) (on b3 b2)(on b2 b1)(empty) (green b3))
  (:goal (and (have b3))))