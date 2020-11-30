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
  )

  (:functions
     (total-cost) - number
  )

(:action move
    :parameters (?x1  ?y1 ?x2 ?y2 - coordinate)
    :precondition (and (robot-at ?x1 ?y1) (succ ?x1 ?x2) (= ?y1 ?y2))               
    :effect (and (robot-at ?x2 ?y2) (not (robot-at ?x1 ?y1)) (increase (total-cost) 1)))

 (:action mark
    :parameters 
      (?x1 ?y1 - coordinate)
    :precondition 
      (and
          (robot-at ?x1 ?y1)
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
        (not (marked ?x1 ?y1))
    )
  )
)
