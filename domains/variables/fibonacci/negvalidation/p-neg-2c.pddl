(define (problem p-neg-2c)
  (:domain variables)
  (:objects v2 v3 - value)
  (:init (assignment a v1) (assignment b v1) (assignment c v0) (assignment d v0)
	(sum v0 v0 v0)
	(sum v0 v1 v1)
	(sum v0 v2 v2)
	(sum v0 v3 v3)
	(sum v1 v0 v1)
	(sum v1 v1 v2)
	(sum v1 v2 v3)
	(sum v2 v0 v2)
	(sum v2 v1 v3)
	(sum v3 v0 v3))
  (:goal (and  (assignment a v1) (assignment b v1) (assignment c v0) (assignment d v0))))