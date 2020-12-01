(define (domain karel-domain)
  (:requirements :typing :action-costs :equality :adl)
  (:types
        direction - object
        coordinate - integer
  )

  (:predicates 
     (robot-at ?x ?y - coordinate)
     (succ ?x ?y - coordinate)
     (marked ?x ?y - coordinate )
     (unmarked ?x ?y - coordinate)
     (obstacle ?x ?y - coordinate)
  )

  (:functions
     (total-cost) - number
  )



(:action move-east
  :parameters
  (?xA ?yA ?xB ?yB - coordinate)
  :precondition
  (and
    (robot-at ?xA ?yA)
    (succ ?xA ?xB)
    (= ?yA ?yB)
    (not (obstacle ?xB ?yB))  
  )
  :effect
  (and
    (robot-at ?xB ?yB)
    (not (robot-at ?xA ?yA))
    (increase (total-cost) 1)
  )
)


(:action move-west
  :parameters
  (?xA ?yA ?xB ?yB - coordinate)
  :precondition
  (and
    (robot-at ?xA ?yA)
    (succ ?xB ?xA)
    (= ?yA ?yB)
    (not (obstacle ?xB ?yB))  
  )
  :effect
  (and
    (robot-at ?xB ?yB)
    (not (robot-at ?xA ?yA))
    (increase (total-cost) 1)
  )
)



(:action move-north
  :parameters
  (?xA ?yA ?xB ?yB - coordinate)
  :precondition
  (and
    (robot-at ?xA ?yA)
    (succ ?yA ?yB)
    (= ?xA ?xB)
    (not (obstacle ?xB ?yB))  
  )
  :effect
  (and
    (robot-at ?xB ?yB)
    (not (robot-at ?xA ?yA))
    (increase (total-cost) 1)
  )
)



(:action move-south
  :parameters
  (?xA ?yA ?xB ?yB - coordinate)
  :precondition
  (and
    (robot-at ?xA ?yA)
    (succ ?yB ?yA)
    (= ?xA ?xB)
    (not (obstacle ?xB ?yB))  
  )
  :effect
  (and
    (robot-at ?xB ?yB)
    (not (robot-at ?xA ?yA))
    (increase (total-cost) 1)
  )
)

 (:action mark
    :parameters 
      (?x1 ?y1 - coordinate)
    :precondition 
      (and
          (robot-at ?x1 ?y1)
          (unmarked ?x1 ?y1)
      )
    :effect 
      (and
          (marked ?x1 ?y1)
      )
  )

  (:action un-mark
    :parameters (?x1 ?y1 - coordinate)
    :precondition
    (and
        (robot-at ?x1 ?y1)
        (marked ?x1 ?y1)
    )
    :effect
    (and
        (unmarked ?x1 ?y1)
    )
  )
)
