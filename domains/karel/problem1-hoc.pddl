(define
	(problem
		karel-hoc-problem1
	)
	(:domain
		karel-hoc-domain
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
    y0 - coordinate
		y1 - coordinate		
    y2 - coordinate
    y3 - coordinate
    y4 - coordinate
    y5 - coordinate
    north - direction
    south - direction
    west - direction
    east - direction
	)
	(:init
    (rotation-left-neighbor north west)
    (rotation-left-neighbor east north)
    (rotation-left-neighbor south east)
    (rotation-left-neighbor west south) 

    (rotation-right-neighbor south west)
    (rotation-right-neighbor west north)
    (rotation-right-neighbor north east)
    (rotation-right-neighbor east south)



		(robot-at x1 y1)
    (robot-facing north)

    ; all the wall part shall be treated like an obstacle
    (obstacle x1 y0)
    (obstacle x2 y0)
    (obstacle x3 y0)


    (obstacle x2 y1)    
    (obstacle x2 y2)
    (obstacle x2 y3)
    (obstacle x2 y4)
  



    (obstacle-neighbor x1 y1 east)
    (obstacle-neighbor x1 y2 east)
    (obstacle-neighbor x1 y3 east)
    (obstacle-neighbor x1 y4 east)

    (obstacle-neighbor x1 y1 south)
    (obstacle-neighbor x3 y1 south)


    (obstacle-neighbor x3 y1 west)
    (obstacle-neighbor x3 y2 west)
    (obstacle-neighbor x3 y3 west)
    (obstacle-neighbor x3 y4 west)

    (succ x1 x2)
		(succ x2 x3)
		(succ x3 x4)
		(succ x4 x5)
    (succ x5 x6)
    (succ x6 x7)
    (succ x7 x8) 
    (succ y1 y2)   
    (succ y2 y3)
    (succ y3 y4)
    (succ y4 y5)
    (unmarked x1 y1)
    (unmarked x2 y1)
    (unmarked x3 y1)
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
    (marked x1 y5)
		(= (total-cost) 0)
	)
	(:goal
		(and
      (robot-at x3 y5)
     
		)
	)
	(:metric
		minimize (total-cost)
	)
)
