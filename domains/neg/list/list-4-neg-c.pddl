(define (problem list4-neg-c)
  (:domain list)
  (:objects  n1 n2 n3 n4 - node )
  (:init ( at n1) ( not-visited n3 ) ( tail n3)( adjacent n1 n2)( not-visited n1 )( adjacent n2 n4)( not-visited n2 )( adjacent n4 n3)( not-visited n4 ) )
  (:goal (and ( not-visited n1 )( not-visited n2 )( not-visited n4 )( not-visited n3 ))))