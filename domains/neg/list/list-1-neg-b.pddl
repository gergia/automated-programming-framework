(define (problem list1-neg-b)
  (:domain list)
  (:objects  n1 - node )
  (:init ( at n1) ( not-visited n1 ) ( tail n1) )
  (:goal (and ( not-visited n1 ))))