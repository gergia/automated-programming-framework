(define (problem list1-pos-a)
  (:domain list)
  (:objects  n1 - node )
  (:init ( at n1) ( not-visited n1 ) ( tail n1) )
  (:goal (and ( visited n1 ))))