(define (problem list17-pos-a)
  (:domain list)
  (:objects  n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14 n15 n16 n17 - node )
  (:init ( at n16) ( not-visited n13 ) ( tail n13)( adjacent n16 n3)( not-visited n16 )( adjacent n3 n2)( not-visited n3 )( adjacent n2 n5)( not-visited n2 )( adjacent n5 n4)( not-visited n5 )( adjacent n4 n14)( not-visited n4 )( adjacent n14 n15)( not-visited n14 )( adjacent n15 n12)( not-visited n15 )( adjacent n12 n10)( not-visited n12 )( adjacent n10 n6)( not-visited n10 )( adjacent n6 n8)( not-visited n6 )( adjacent n8 n1)( not-visited n8 )( adjacent n1 n11)( not-visited n1 )( adjacent n11 n17)( not-visited n11 )( adjacent n17 n7)( not-visited n17 )( adjacent n7 n9)( not-visited n7 )( adjacent n9 n13)( not-visited n9 ) )
  (:goal (and ( visited n16 )( visited n3 )( visited n2 )( visited n5 )( visited n4 )( visited n14 )( visited n15 )( visited n12 )( visited n10 )( visited n6 )( visited n8 )( visited n1 )( visited n11 )( visited n17 )( visited n7 )( visited n9 )( visited n13 ))))