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
    x4 - coordinate		
		y1 - coordinate	
    y2 - coordinate	
	)
	(:init
		(robot-at x1 y1)
    (succ x1 x2)
		(succ x2 x3)
    (succ x3 x4)
    (succ y1 y2)
		(= (total-cost) 0)
	)
	(:goal
			(robot-at x4 y2)
	)
	(:metric
		minimize (total-cost)
	)
)
