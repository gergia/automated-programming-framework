(define (problem ts3-pos-a)
  (:domain variables)
  (:objects v2 v3 v4 v5 v6 - value)
  (:init (assignment a v0) (assignment b v3) (sum v0 v0 v0)(sum v0 v1 v1)(sum v0 v2 v2)(sum v0 v3 v3)(sum v0 v4 v4)(sum v0 v5 v5)(sum v0 v6 v6)(sum v1 v0 v1)(sum v1 v1 v2)(sum v1 v2 v3)(sum v1 v3 v4)(sum v1 v4 v5)(sum v1 v5 v6)(sum v2 v0 v2)(sum v2 v1 v3)(sum v2 v2 v4)(sum v2 v3 v5)(sum v2 v4 v6)(sum v3 v0 v3)(sum v3 v1 v4)(sum v3 v2 v5)(sum v3 v3 v6)(sum v4 v0 v4)(sum v4 v1 v5)(sum v4 v2 v6)(sum v5 v0 v5)(sum v5 v1 v6)(sum v6 v0 v6))
  (:goal (and  (assignment a v6) (assignment b v0))))