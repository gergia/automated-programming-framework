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

(:action move
    :parameters (?xA ?yA ?xB ?yB - coordinate)
    :precondition 
    (and
      (robot-at ?xA ?yA)
    )
    :effect 
    (and
      (when
        (and
          (succ ?xA ?xB)
          (= ?yA ?yB)
        )
        (and 
          (robot-at ?xB ?yB) 
          (not (robot-at ?xA ?yA)) 
          (increase (total-cost) 1)        
        )
      )
      (when
          (and
            (succ ?xB ?xA)
            (= ?yA ?yB)
          )
          (and 
            (robot-at ?xB ?yB) 
            (not (robot-at ?xA ?yA)) 
            (increase (total-cost) 1)        
          )
        )
    )
)
 
)
