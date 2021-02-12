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
      (or
        (and
          (succ ?xA ?xB)
          (= ?yA ?yB)
        )
        (or 
          (and
            (succ ?xB ?xA)
            (= ?yA ?yB)
          )
          (or
            (and
              (succ ?yA ?yB)
              (= ?xA ?xB)
            )
            (and
              (succ ?yB ?yA)
              (= ?xA ?xB)
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
