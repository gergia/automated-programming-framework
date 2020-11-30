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
		(= (total-cost) 0)
	)
	(:goal
		(and
			(robot-at x8 y1)
     ; (not (marked x8 y1))
; for now it seems that not is not supported. There are ways to go around it, if necessary
      (marked x8 y1)
		)
	)
	(:metric
		minimize (total-cost)
	)
)
