(define (problem p5)
  (:domain pointers )
  (:objects  v0 v1 v2 v3 v4 - value 
  )
  (:init
	( next v0 v1)
	( next v1 v2)
	( next v2 v3)
	( next v3 v4)
	( vector-assignment v0 v0)
	( vector-assignment v1 v0)
	( vector-assignment v2 v1)
	( vector-assignment v3 v0)
	( vector-assignment v4 v2)
	( assignment a v0 )
	( content a v0 )
	( assignment c v0 )
	( assignment target v0)
	( assignment tail v4) )
  (:goal
	( and
	( assignment a v4 )
	( assignment c v0 )
	)
  )
)