(define (problem p1-10a)
  (:domain list)
  (:objects n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 nlast - node )
  (:init  (at n1) (adjacent n1 n2) (adjacent n2 n3) (adjacent n3 n4)(adjacent n4 n5)(adjacent n5 n6)
			(adjacent n6 n7)(adjacent n7 n8)(adjacent n8 n9)(adjacent n9 n10)(adjacent n10 nlast) 
			(not-visited n1)(not-visited n2)(not-visited n3)(not-visited n4)(not-visited n5)(not-visited n6)(not-visited n7)(not-visited n8)(not-visited n9)(not-visited n10)(not-visited nlast)
	)
  (:goal (and (at nlast) (visited n1) (visited n2) (visited n3) (visited n4)(visited n5)(visited n6)(visited n7)(visited n8)(visited n9)(visited n10)(not-visited nlast) ))
)