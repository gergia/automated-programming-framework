(define (problem p4b)
  (:domain blocksworld)
  (:objects 
	 c1 c2 c3 c4 - columns  b1 b2 b3 b4 - block )
	
  (:init
	( adjacent-columns c1 c2 )
	( adjacent-columns c2 c3 )
	( adjacent-columns c3 c4 )
	( handempty )
	( current-columns c3 )
	( goal-columns c4 )
	( ontable b2 )
	( clear b2 )
	( ontable b4 )
	( on b1 b4 )
	( clear b1 )
	( ontable b3 )
	( clear b3 ) )
  (:goal
	( and 
	( ontable b1 )
	( clear b1 )
	( ontable b4 )
	( clear b4 )
	( ontable b2 )
	( clear b2 )
	( ontable b3 )
	( clear b3 )
	)
  )
)