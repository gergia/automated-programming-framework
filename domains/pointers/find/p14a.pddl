(define (problem p14a)
  (:domain pointers )
  (:objects  v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 - value 
  )
  (:init
	( next v0 v1)
	( next v1 v2)
	( next v2 v3)
	( next v3 v4)
	( next v4 v5)
	( next v5 v6)
	( next v6 v7)
	( next v7 v8)
	( next v8 v9)
	( next v9 v10)
	( next v10 v11)
	( next v11 v12)
	( next v12 v13)
	( next v13 v14)
	( vector-assignment v0 v8)
	( vector-assignment v1 v13)
	( vector-assignment v2 v7)
	( vector-assignment v3 v9)
	( vector-assignment v4 v7)
	( vector-assignment v5 v2)
	( vector-assignment v6 v9)
	( vector-assignment v7 v10)
	( vector-assignment v8 v2)
	( vector-assignment v9 v3)
	( vector-assignment v10 v6)
	( vector-assignment v11 v2)
	( vector-assignment v12 v9)
	( vector-assignment v13 v13)
	( assignment a v0 )
	( content a v8 )
	( assignment c v0 )
	( assignment target v6)
	( assignment tail v13) )
  (:goal
	( and
	( assignment a v13 )
	( assignment c v1 )
	)
  )
)