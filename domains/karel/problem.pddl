(define
	(problem
		karel_problem
	)
	(:domain
		karel-domain
	)
	(:objects
		x0 - coordinate
		x1 - coordinate
		x2 - coordinate
		x3 - coordinate
		x4 - coordinate
		x5 - coordinate	
    x6 - coordinate	
    x7 - coordinate
    x8 - coordinate
		y1 - coordinate		
    y2 - coordinate
	)
	(:init
		(robot-at x1 y1)
    (succ x1 x2)
		(succ x2 x3)
		(succ x3 x4)
		(succ x4 x5)
    (succ x5 x6)
    (succ x6 x7)
    (succ x7 x8) 
    (succ y1 y2)   
    (unmarked x1 y1)
    (unmarked x2 y1)
    (unmarked x3 y1)
    (obstacle x2 y1)
    (unmarked x5 y1)
    (unmarked x6 y1)
    (unmarked x7 y1)

    (unmarked x1 y2)
    (unmarked x2 y2)
    (unmarked x3 y2)
    (unmarked x4 y2)
    (unmarked x5 y2)
    (unmarked x6 y2)
    (unmarked x7 y2)

    (marked x8 y1)
		(= (total-cost) 0)
	)
	(:goal
		(and
			(robot-at x3 y1)
		)
	)
	(:metric
		minimize (total-cost)
	)
)
