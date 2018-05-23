(define (problem p10b)
  (:domain blocksworld)
  (:objects 
	 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 - columns  b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - block )
	
  (:init
	( adjacent-columns c1 c2 )
	( adjacent-columns c2 c3 )
	( adjacent-columns c3 c4 )
	( adjacent-columns c4 c5 )
	( adjacent-columns c5 c6 )
	( adjacent-columns c6 c7 )
	( adjacent-columns c7 c8 )
	( adjacent-columns c8 c9 )
	( adjacent-columns c9 c10 )
	( handempty )
	( current-columns c4 )
	( goal-columns c4 )
	( ontable b1 )
	( on b5 b1 )
	( on b6 b5 )
	( clear b6 )
	( ontable b4 )
	( on b3 b4 )
	( on b7 b3 )
	( on b10 b7 )
	( on b8 b10 )
	( clear b8 )
	( ontable b9 )
	( clear b9 )
	( ontable b2 )
	( clear b2 ) )
  (:goal
	( and 
	( ontable b3 )
	( on b1 b3 )
	( on b9 b1 )
	( on b7 b9 )
	( on b10 b7 )
	( on b8 b10 )
	( on b5 b8 )
	( clear b5 )
	( ontable b4 )
	( clear b4 )
	( ontable b6 )
	( clear b6 )
	( ontable b2 )
	( clear b2 )
	)
  )
)