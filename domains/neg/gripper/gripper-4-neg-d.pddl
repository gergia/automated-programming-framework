(define (problem gripper4-neg-d)
  (:domain gripper)
  (:objects b1 b2 b3 b4 - ball )
  (:init (at-robby roomA) (free left) (free right) ( next-ball b1 ) ( at b4 roomB ) 
     (succ-balls b1 b2)
     (succ-balls b2 b3)
     (succ-balls b3 b4)
     (at b1 roomA)
     (at b2 roomB)
     (at b3 roomB)
)
  (:goal (and 
      (at b1 roomA )
      (at b2 roomA )
      (at b3 roomA )
)))