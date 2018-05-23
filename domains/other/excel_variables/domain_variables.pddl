( DEFINE ( DOMAIN EXCEL )
( :REQUIREMENTS :TYPING )
( :TYPES
	LIMITER - CHAR
	CHAR - OBJECT
	INPUT - STRING
	STRING - OBJECT
	OUTPUT - STRING
	INDEX - OBJECT
	INPUT-VARIABLE - OBJECT
)
( :CONSTANTS
	I0 I1 - INDEX
)
( :PREDICATES
	( ASSIGNMENT ?STRING0 - STRING ?INDEX1 - INDEX ?CHAR2 - CHAR )
	( LOINDEX ?INPUT0 - INPUT ?INDEX1 - INDEX )
	( HIINDEX ?INPUT0 - INPUT ?INDEX1 - INDEX )
	( SIZE ?STRING0 - STRING ?INDEX1 - INDEX )
	( EMPTY ?INPUT-VARIABLE0 - INPUT-VARIABLE )
	( NEXT ?INDEX0 - INDEX ?INDEX1 - INDEX )
	( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 - INPUT-VARIABLE ?INPUT1 - INPUT )
)
( :ACTION APPEND-CHAR
  :PARAMETERS ( ?OUTPUT0 - OUTPUT ?LIMITER1 - LIMITER )
  :PRECONDITION
	( AND
	)
  :EFFECT
	( AND
		( FORALL
			( ?INDEX2 - INDEX ?INDEX3 - INDEX )
			( WHEN
				( AND
					( SIZE ?OUTPUT0 ?INDEX2 )
					( NEXT ?INDEX2 ?INDEX3 )
				)
				( AND
					( NOT ( SIZE ?OUTPUT0 ?INDEX2 ) )
					( SIZE ?OUTPUT0 ?INDEX3 )
					( ASSIGNMENT ?OUTPUT0 ?INDEX2 ?LIMITER1 )
				)
			)
		)
	)
)
( :ACTION APPEND-STR
  :PARAMETERS ( ?OUTPUT0 - OUTPUT ?INPUT-VARIABLE1 - INPUT-VARIABLE )
  :PRECONDITION
	( AND
	)
  :EFFECT
	( AND
		( FORALL
			( ?INDEX2 - INDEX ?INDEX3 - INDEX ?CHAR4 - CHAR ?INPUT5 - INPUT )
			( WHEN
				( AND
					( SIZE ?OUTPUT0 ?INDEX2 )
					( LOINDEX ?INPUT5 ?INDEX3 )
					( ASSIGNMENT ?INPUT5 ?INDEX3 ?CHAR4 )
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE1 ?INPUT5 )
				)
				( AND
					( ASSIGNMENT ?OUTPUT0 ?INDEX2 ?CHAR4 )
				)
			)
		)
		( FORALL
			( ?INDEX2 - INDEX ?INDEX3 - INDEX )
			( WHEN
				( AND
					( SIZE ?OUTPUT0 ?INDEX2 )
					( NEXT ?INDEX2 ?INDEX3 )
				)
				( AND
					( NOT ( SIZE ?OUTPUT0 ?INDEX2 ) )
					( SIZE ?OUTPUT0 ?INDEX3 )
				)
			)
		)
	)
)
( :ACTION INC-LOINDEX
  :PARAMETERS ( ?INPUT-VARIABLE0 - INPUT-VARIABLE )
  :PRECONDITION
	( AND
	)
  :EFFECT
	( AND
		( FORALL
			( ?INDEX1 - INDEX ?INDEX2 - INDEX ?INPUT3 - INPUT )
			( WHEN
				( AND
					( LOINDEX ?INPUT3 ?INDEX1 )
					( NEXT ?INDEX1 ?INDEX2 )
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT3 )
				)
				( AND
					( NOT ( LOINDEX ?INPUT3 ?INDEX1 ) )
					( LOINDEX ?INPUT3 ?INDEX2 )
				)
			)
		)
	)
)
( :ACTION GET-PREFIX
  :PARAMETERS ( ?INPUT-VARIABLE0 - INPUT-VARIABLE ?LIMITER1 - LIMITER )
  :PRECONDITION
	( AND
	)
  :EFFECT
	( AND
		( FORALL
			( ?INDEX2 - INDEX ?INPUT3 - INPUT )
			( WHEN
				( AND
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT3 )
				)
				( AND
					( NOT ( LOINDEX ?INPUT3 ?INDEX2 ) )
					( NOT ( HIINDEX ?INPUT3 ?INDEX2 ) )
				)
			)
		)
		( FORALL
			( ?INPUT2 - INPUT )
			( WHEN
				( AND
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT2 )
				)
				( LOINDEX ?INPUT2 I0 )
			)
		)
		( FORALL
			( ?INDEX2 - INDEX ?INPUT3 - INPUT )
			( WHEN
				( AND
					( ASSIGNMENT ?INPUT3 ?INDEX2 ?LIMITER1 )
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT3 )
				)
				( AND
					( HIINDEX ?INPUT3 ?INDEX2 )
				)
			)
		)
	)
)
( :ACTION GET-SUFFIX
  :PARAMETERS ( ?INPUT-VARIABLE0 - INPUT-VARIABLE ?LIMITER1 - LIMITER )
  :PRECONDITION
	( AND
	)
  :EFFECT
	( AND
		( FORALL
			( ?INDEX2 - INDEX ?INPUT3 - INPUT )
			( WHEN
				( AND
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT3 )
				)
				( AND
					( NOT ( LOINDEX ?INPUT3 ?INDEX2 ) )
					( NOT ( HIINDEX ?INPUT3 ?INDEX2 ) )
				)
			)
		)
		( FORALL
			( ?INDEX2 - INDEX ?INDEX3 - INDEX ?INPUT4 - INPUT )
			( WHEN
				( AND
					( NEXT ?INDEX2 ?INDEX3 )
					( ASSIGNMENT ?INPUT4 ?INDEX2 ?LIMITER1 )
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT4 )
				)
				( AND
					( LOINDEX ?INPUT4 ?INDEX3 )
				)
			)
		)
		( FORALL
			( ?INDEX2 - INDEX ?INPUT3 - INPUT )
			( WHEN
				( AND
					( SIZE ?INPUT3 ?INDEX2 )
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT3 )
				)
				( AND
					( HIINDEX ?INPUT3 ?INDEX2 )
				)
			)
		)
	)
)
( :ACTION GET-SUBSTR
  :PARAMETERS ( ?INPUT-VARIABLE0 - INPUT-VARIABLE ?LIMITER1 - LIMITER ?LIMITER2 - LIMITER )
  :PRECONDITION
	( AND
	)
  :EFFECT
	( AND
		( FORALL
			( ?INDEX3 - INDEX ?INPUT4 - INPUT )
			( WHEN
				( AND
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT4 )
				)
				( AND
					( NOT ( LOINDEX ?INPUT4 ?INDEX3 ) )
					( NOT ( HIINDEX ?INPUT4 ?INDEX3 ) )
				)
			)
		)
		( FORALL
			( ?INDEX3 - INDEX ?INDEX4 - INDEX ?INPUT5 - INPUT )
			( WHEN
				( AND
					( NEXT ?INDEX3 ?INDEX4 )
					( ASSIGNMENT ?INPUT5 ?INDEX3 ?LIMITER1 )
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT5 )
				)
				( AND
					( LOINDEX ?INPUT5 ?INDEX4 )
				)
			)
		)
		( FORALL
			( ?INDEX3 - INDEX ?INPUT4 - INPUT )
			( WHEN
				( AND
					( ASSIGNMENT ?INPUT4 ?INDEX3 ?LIMITER2 )
					( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT4 )
				)
				( AND
					( HIINDEX ?INPUT4 ?INDEX3 )
				)
			)
		)
	)
)
( :DERIVED ( EMPTY ?INPUT-VARIABLE0 - INPUT-VARIABLE )
	( EXISTS
		( ?INDEX1 - INDEX ?INPUT2 - INPUT )
		( AND
			( LOINDEX ?INPUT2 ?INDEX1 )
			( HIINDEX ?INPUT2 ?INDEX1 )
			( INPUT-ASSIGNMENT ?INPUT-VARIABLE0 ?INPUT2 )
		)
	)
)
)