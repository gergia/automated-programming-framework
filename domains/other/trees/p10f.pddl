(define (problem p10f)
  (:domain trees_alt )
  (:objects 
	 current childs - variable
	 n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 - node )
	
  (:init
	( assignment current n8 )
	( internal n8 )
	( right-child n7 n8 )
	( internal n7 )
	( right-child n1 n7 )
	( internal n1 )
	( right-child n9 n1 )
	( internal n9 )
	( left-child n5 n9 )
	( internal n5 )
	( right-child n6 n5 )
	( left-child n3 n5 )
	( internal n3 )
	( right-child n2 n3 )
	( left-child n10 n3 )
	( left-child n4 n8 ) )
  (:goal
	( and 
	( visited n8 )
	( visited n7 )
	( visited n1 )
	( visited n9 )
	( visited n5 )
	( visited n6 )
	( visited n3 )
	( visited n2 )
	( visited n10 )
	( visited n4 )
	)
  )
)