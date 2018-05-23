(define (problem fibo5lifted)
	(:domain programming)
	(:objects
		v0 v1 v2 v3 v4 v5 v6 v7 v8 - value
	)
	(:init
		(assignment fn v1)
		(assignment fn1 v0)
		(assignment fn2 v0)
		(assignment iter v5)
		(arity-2 next)
		(arity-3 sum)
		(includes-2ary next v0 v1)
		(includes-2ary next v1 v2)
		(includes-2ary next v2 v3)
		(includes-2ary next v3 v4)
		(includes-2ary next v4 v5)
		(includes-2ary next v5 v6)
		(includes-2ary next v6 v7)
		(includes-2ary next v7 v8)
		(includes-3ary sum v0 v0 v0)
		(includes-3ary sum v0 v1 v1)
		(includes-3ary sum v0 v2 v2)
		(includes-3ary sum v0 v3 v3)
		(includes-3ary sum v0 v4 v4)
		(includes-3ary sum v0 v5 v5)
		(includes-3ary sum v0 v6 v6)
		(includes-3ary sum v0 v7 v7)
		(includes-3ary sum v0 v8 v8)
		(includes-3ary sum v1 v0 v1)
		(includes-3ary sum v1 v1 v2)
		(includes-3ary sum v1 v2 v3)
		(includes-3ary sum v1 v3 v4)
		(includes-3ary sum v1 v4 v5)
		(includes-3ary sum v1 v5 v6)
		(includes-3ary sum v1 v6 v7)
		(includes-3ary sum v1 v7 v8)
		(includes-3ary sum v2 v0 v2)
		(includes-3ary sum v2 v1 v3)
		(includes-3ary sum v2 v2 v4)
		(includes-3ary sum v2 v3 v5)
		(includes-3ary sum v2 v4 v6)
		(includes-3ary sum v2 v5 v7)
		(includes-3ary sum v2 v6 v8)
		(includes-3ary sum v3 v0 v3)
		(includes-3ary sum v3 v1 v4)
		(includes-3ary sum v3 v2 v5)
		(includes-3ary sum v3 v3 v6)
		(includes-3ary sum v3 v4 v7)
		(includes-3ary sum v3 v5 v8)
		(includes-3ary sum v4 v0 v4)
		(includes-3ary sum v4 v1 v5)
		(includes-3ary sum v4 v2 v6)
		(includes-3ary sum v4 v3 v7)
		(includes-3ary sum v4 v4 v8)
		(includes-3ary sum v5 v0 v5)
		(includes-3ary sum v5 v1 v6)
		(includes-3ary sum v5 v2 v7)
		(includes-3ary sum v5 v3 v8)
		(includes-3ary sum v6 v0 v6)
		(includes-3ary sum v6 v1 v7)
		(includes-3ary sum v6 v2 v8)
		(includes-3ary sum v7 v0 v7)
		(includes-3ary sum v7 v1 v8)
		(includes-3ary sum v8 v0 v8)
	)
	(:goal (and
		(assignment fn v8)
		(assignment fn1 v5)
		(assignment fn2 v3)
		(assignment iter v0)
	))
)