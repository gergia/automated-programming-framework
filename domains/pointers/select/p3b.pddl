(define (problem p3b)
  (:domain pointers )
  (:objects  v0 v1 v2 - value 
  )
  (:init
	( next v0 v1)
	( next v1 v2)
	( less v0 v1)
	( less v0 v2)
	( less v1 v2)
	( vector-assignment v0 v2)
	( vector-assignment v1 v0)
	( vector-assignment v2 v2)
	( assignment a v0 )
	( content a v2 )
	( assignment b v0 )
	( content b v2 )
	( assignment tail v2) )
  (:goal
	( and
	( assignment a v2 )
	( content a v2 )
	( assignment b v1 )
	( content b v0 )
	)
  )
)