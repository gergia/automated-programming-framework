(define (problem list9-neg-a)
  (:domain list)
  (:objects  n1 n2 n3 n4 n5 n6 n7 n8 n9 - node )
  (:init ( at n9) ( not-visited n2 ) ( tail n2)( adjacent n9 n1)( not-visited n9 )( adjacent n1 n3)( not-visited n1 )( adjacent n3 n6)( not-visited n3 )( adjacent n6 n4)( not-visited n6 )( adjacent n4 n5)( not-visited n4 )( adjacent n5 n8)( not-visited n5 )( adjacent n8 n7)( not-visited n8 )( adjacent n7 n2)( not-visited n7 ) )
  (:goal (and ( visited n9 )( visited n1 )( not-visited n3 )( not-visited n6 )( visited n4 )( not-visited n5 )( visited n8 )( visited n7 )( not-visited n2 ))))