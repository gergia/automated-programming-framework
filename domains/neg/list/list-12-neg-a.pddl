(define (problem list12-neg-a)
  (:domain list)
  (:objects  n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 - node )
  (:init ( at n5) ( not-visited n2 ) ( tail n2)( adjacent n5 n6)( not-visited n5 )( adjacent n6 n10)( not-visited n6 )( adjacent n10 n1)( not-visited n10 )( adjacent n1 n7)( not-visited n1 )( adjacent n7 n8)( not-visited n7 )( adjacent n8 n4)( not-visited n8 )( adjacent n4 n12)( not-visited n4 )( adjacent n12 n9)( not-visited n12 )( adjacent n9 n11)( not-visited n9 )( adjacent n11 n3)( not-visited n11 )( adjacent n3 n2)( not-visited n3 ) )
  (:goal (and ( visited n5 )( not-visited n6 )( not-visited n10 )( visited n1 )( not-visited n7 )( visited n8 )( not-visited n4 )( visited n12 )( visited n9 )( not-visited n11 )( visited n3 )( not-visited n2 ))))