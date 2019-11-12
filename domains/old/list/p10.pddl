(define (problem p10)
  (:domain list )
  (:objects  n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 - node )
  (:init
	( at n6) ( goal n3)
	( adjacent n6 n8)
	( adjacent n8 n9)
	( adjacent n9 n2)
	( adjacent n2 n5)
	( adjacent n5 n1)
	( adjacent n1 n7)
	( adjacent n7 n4)
	( adjacent n4 n10)
	( adjacent n10 n3) 
  )
  (:goal
	( and
	( at n3) ( visited n3)
	( visited n6 ) ( checked n6 )
	( visited n8 ) ( checked n8 )
	( visited n9 ) ( checked n9 )
	( visited n2 ) ( checked n2 )
	( visited n5 ) ( checked n5 )
	( visited n1 ) ( checked n1 )
	( visited n7 ) ( checked n7 )
	( visited n4 ) ( checked n4 )
	( visited n10 ) ( checked n10 )
	)
  )
)