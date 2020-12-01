(define
	(problem
		test_problem
	)
	(:domain
		test-domain
	)
	(:objects
		x0 - coordinate
		x1 - coordinate
		x2 - coordinate
		x3 - coordinate		
		y1 - coordinate		
	)
	(:init
		(robot-at x1 y1)
    (succ x1 x2)
		(succ x2 x3)
		(= (total-cost) 0)
	)
	(:goal
			(robot-at x3 y1)
	)
	(:metric
		minimize (total-cost)
	)
)
