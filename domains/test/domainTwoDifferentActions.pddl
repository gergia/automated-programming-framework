(define (domain test-domain)
  (:requirements :typing :action-costs :equality :adl)
  (:types
        direction - object
        coordinate - integer
  )

  (:predicates 
     (robot-at ?x ?y - coordinate)
     (succ ?x ?y - coordinate)
  )

  (:functions
     (total-cost) - number
  )

(:action move-right
    :parameters (?xA ?yA ?xB ?yB - coordinate)
    :precondition 
    (and
      (robot-at ?xA ?yA)              
      (succ ?xA ?xB)
      (= ?yA ?yB)
    )
    :effect 
    (and 
      (robot-at ?xB ?yB) 
      (not (robot-at ?xA ?yA)) 
      (increase (total-cost) 1)
    )
)

(:action move-left
    :parameters (?xA ?yA ?xB ?yB - coordinate)
    :precondition
    (and
      (robot-at ?xA ?yA)
      (succ ?xB ?xA)
      (= ?yA ?yB)
    )
    :effect 
    (and 
      (robot-at ?xB ?yB) 
      (not (robot-at ?xA ?yA)) 
      (increase (total-cost) 1)
    )
)


(:action move-up
    :parameters (?xA ?yA ?xB ?yB - coordinate)
    :precondition
    (and
      (robot-at ?xA ?yA)
      (succ ?yA ?yB)
      (= ?xA ?xB)
    )
    :effect 
    (and 
      (robot-at ?xB ?yB) 
      (not (robot-at ?xA ?yA)) 
      (increase (total-cost) 1)
    )
)
)
