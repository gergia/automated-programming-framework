(define (problem list7-neg-a)
  (:domain list)
  (:objects  n1 n2 n3 n4 n5 n6 n7 - node )
  (:init ( at n6) ( not-visited n3 ) ( tail n3)( adjacent n6 n2)( not-visited n6 )( adjacent n2 n7)( not-visited n2 )( adjacent n7 n1)( not-visited n7 )( adjacent n1 n4)( not-visited n1 )( adjacent n4 n5)( not-visited n4 )( adjacent n5 n3)( not-visited n5 ) )
  (:goal (and ( visited n6 )( not-visited n2 )( visited n7 )( visited n1 )( not-visited n4 )( visited n5 )( visited n3 ))))