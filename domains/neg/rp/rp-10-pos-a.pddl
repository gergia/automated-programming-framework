(define (problem rp10-pos-a)
  (:domain robopainter)
  (:objects i0 i1 i2 i3 i4 i5 i6 i7 i8 i9 i10 - index)
  (:init (at i0)(last i10)(adjacent i0 i1)(white-cell i0)(adjacent i1 i2)(white-cell i1)(adjacent i2 i3)(white-cell i2)(adjacent i3 i4)(white-cell i3)(adjacent i4 i5)(white-cell i4)(adjacent i5 i6)(white-cell i5)(adjacent i6 i7)(white-cell i6)(adjacent i7 i8)(white-cell i7)(adjacent i8 i9)(white-cell i8)(adjacent i9 i10)(white-cell i9))
(:goal (and  (at i10) (white-cell i0)(painted-black i1)(white-cell i2)(painted-black i3)(white-cell i4)(painted-black i5)(white-cell i6)(painted-black i7)(white-cell i8)(painted-black i9)  )))
