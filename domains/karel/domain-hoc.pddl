(define (domain karel-hoc-domain)
  (:requirements :typing :action-costs :equality :adl :conditional-effects)
  (:types
        coordinate - integer
        direction - object 
  )

  (:predicates 
     (robot-at ?x ?y - coordinate)
     (robot-facing ?d - direction)
     (succ ?x ?y - integer)
     (marked ?x ?y - coordinate )
     (unmarked ?x ?y - coordinate)
     (obstacle ?x ?y - coordinate)
     (obstacle-neighbor ?x ?y - coordinate ?d -direction)
     (obstacle-in-front)
     (rotation-left-neighbor ?d1 ?d2 - direction)
     (rotation-right-neighbor ?d1 ?d2 - direction)

     
  )
  

  (:functions
     (total-cost) - number
  )

  (:constants
    north
    south
    west
    east - direction
)



  (:action turn-left
    :parameters
    (?directionStart ?directionEnd - direction ?x ?y - coordinate)
    :precondition
    (and
      (robot-facing ?directionStart)
      (rotation-left-neighbor ?directionStart ?directionEnd)
      (robot-at ?x ?y)
    )
    :effect
    (and
      (not (robot-facing ?directionStart))
      (robot-facing ?directionEnd)
      (increase (total-cost) 1)
      (when
        (obstacle-neighbor ?x ?y ?directionEnd)
        (obstacle-in-front)
      )
      (when
        (not (obstacle-neighbor ?x ?y ?directionEnd))
        (not (obstacle-in-front))
      )

    )
  )


  (:action turn-right
    :parameters
    (?directionStart ?directionEnd - direction ?x ?y - coordinate)
    :precondition
    (and
      (robot-facing ?directionStart)
      (rotation-right-neighbor ?directionStart ?directionEnd)
      (robot-at ?x ?y)
    )
    :effect
    (and
      (not (robot-facing ?directionStart))
      (robot-facing ?directionEnd)
      (increase (total-cost) 1)
      (when
        (obstacle-neighbor ?x ?y ?directionEnd)
        (obstacle-in-front)
      )
      (when
        (not (obstacle-neighbor ?x ?y ?directionEnd))
        (not (obstacle-in-front))
      )

    )
  )


  (:action move
    :parameters
    (?xA ?yA ?xB ?yB - coordinate)
    :precondition
    (and
      (robot-at ?xA ?yA)      
      (not (obstacle ?xB ?yB))
      (or
        (and
          (robot-facing north)                  
          (succ ?yA ?yB)
          (= ?xA ?xB)
        )
        (or
          (and
            (robot-facing south)
            (succ ?yB ?yA)
            (= ?xA ?xB)
          )
          (or
            (and
              (robot-facing west)
              (succ ?xB ?xA)
              (= ?yA ?yB)
            )
            (and
              (robot-facing east)
              (succ ?xA ?xB)
              (= ?yA ?yB)
            )
          )
        )
      )
    )
    :effect
    (and
      (robot-at ?xB ?yB)
      (not (robot-at ?xA ?yA))
      (increase (total-cost) 1)
    )    
  )



)
