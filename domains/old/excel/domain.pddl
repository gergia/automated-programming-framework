(define (domain excel)
	(:requirements :typing)
	(:types
		limiter - char
		input output - string
		string index char
	)
	(:constants i0 i1 - index)
	(:predicates
		(assignment ?str - string ?ix - index ?ch - char)
		(loindex ?str - input ?ix - index)
		(hiindex ?str - input ?ix - index)
		(size ?str - string ?ix - index)
		(empty ?str - input)
		(next ?ix1 ?ix2 - index)
	)

	(:action append-char
		:parameters (?str - output ?ch - limiter)
		:precondition ()
		:effect (and (forall (?ix1 ?ix2 - index)
		                     (when (and (size ?str ?ix1) (next ?ix1 ?ix2))
		                           (and (not (size ?str ?ix1)) (size ?str ?ix2) (assignment ?str ?ix1 ?ch))
		                     )
		             )
		        )
	)

	(:action append-str
		:parameters (?str1 - output ?str2 - input)
		:precondition ()
		:effect (and (forall (?ix1 ?ix2 - index ?ch - char)
		                     (when (and (size ?str1 ?ix1) (loindex ?str2 ?ix2) (assignment ?str2 ?ix2 ?ch))
		                           (and (assignment ?str1 ?ix1 ?ch))
		                     )
		             )
		             (forall (?ix1 ?ix2 - index)
		                     (when (and (size ?str1 ?ix1) (next ?ix1 ?ix2))
		                           (and (not (size ?str1 ?ix1)) (size ?str1 ?ix2))
		                     )
		             )
		        )
	)

	(:action inc-loindex
		:parameters (?str - input)
		:precondition ()
		:effect (and (forall (?ix1 ?ix2 - index)
		                     (when (and (loindex ?str ?ix1) (next ?ix1 ?ix2))
		                           (and (not (loindex ?str ?ix1)) (loindex ?str ?ix2))
		                     )
		             )
		        )
	)

	(:action get-prefix
		:parameters (?str - input ?ch - limiter)
		:precondition ()
		:effect (and (forall (?ix1 - index)
		                     (and (not (loindex ?str ?ix1)) (not (hiindex ?str ?ix1)))
		             )
		             (loindex ?str i0)
		             (forall (?ix1 - index)
		                     (when (and (assignment ?str ?ix1 ?ch))
		                           (and (hiindex ?str ?ix1))
		                     )
		             )
		        )
	)

	(:action get-suffix
		:parameters (?str - input ?ch - limiter)
		:precondition ()
		:effect (and (forall (?ix1 - index)
		                     (and (not (loindex ?str ?ix1)) (not (hiindex ?str ?ix1)))
		             )
		             (forall (?ix1 ?ix2 - index)
		                     (when (and (next ?ix1 ?ix2) (assignment ?str ?ix1 ?ch))
		                           (and (loindex ?str ?ix2))
		                     )
		             )
		             (forall (?ix1 - index)
		                     (when (and (size ?str ?ix1))
		                           (and (hiindex ?str ?ix1))
		                     )
		             )
		        )
	)

	(:action get-substr
		:parameters (?str - input ?ch1 ?ch2 - limiter)
		:precondition ()
		:effect (and (forall (?ix1 - index)
		                     (and (not (loindex ?str ?ix1)) (not (hiindex ?str ?ix1)))
		             )
		             (forall (?ix1 ?ix2 - index)
		                     (when (and (next ?ix1 ?ix2) (assignment ?str ?ix1 ?ch1))
		                           (and (loindex ?str ?ix2))
		                     )
		             )
		             (forall (?ix1 - index)
		                     (when (and (assignment ?str ?ix1 ?ch2))
		                           (and (hiindex ?str ?ix1))
		                     )
		             )
		        )
	)

	(:derived (empty ?str - input)
		(exists (?ix - index)
		        (and (loindex ?str ?ix) (hiindex ?str ?ix))
		)
	)
)