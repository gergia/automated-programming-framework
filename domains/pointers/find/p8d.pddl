(define (problem p8d)
  (:domain pointers )
  (:objects  v0 v1 v2 v3 v4 v5 v6 v7 - value 
  )
  (:init
	( next v0 v1)
	( next v1 v2)
	( next v2 v3)
	( next v3 v4)
	( next v4 v5)
	( next v5 v6)
	( next v6 v7)
	( vector-assignment v0 v5)
	( vector-assignment v1 v3)
	( vector-assignment v2 v2)
	( vector-assignment v3 v3)
	( vector-assignment v4 v7)
	( vector-assignment v5 v0)
	( vector-assignment v6 v0)
	( vector-assignment v7 v1)
	( assignment a v0 )
	( content a v5 )
	( assignment c v0 )
	( assignment target v0)
	( assignment tail v7) )
  (:goal
	( and
	( assignment a v7 )
	( assignment c v2 )
	)
  )
)