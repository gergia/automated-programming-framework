(define (problem list2-neg-b)
  (:domain list)
  (:objects  n1 n2 - node )
  (:init ( at n2) ( not-visited n1 ) ( tail n1)( adjacent n2 n1)( not-visited n2 ) )
  (:goal (and ( not-visited n2 )( not-visited n1 ))))
