(define (problem p1-2a)
  (:domain list)
  (:objects n1 n2 nlast - node )
  (:init  (at n1) (adjacent n1 n2) (adjacent n2 nlast)
			(not-visited n1)(not-visited n2)(not-visited nlast)
	)
  (:goal (and (visited n1) (visited n2) ))
)
