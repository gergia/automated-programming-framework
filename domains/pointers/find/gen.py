#! /usr/bin/env python
import sys,time,random,string

#**************************************#
# MAIN
#**************************************#
try:
   size = int( sys.argv[ 1 ] )
   lettername = sys.argv[ 2 ] 
except:
   print "Usage:"
   print sys.argv[ 0 ] + " <size> <letter>"
   print sys.argv[ 0 ] + " 5 a"
   sys.exit(-1)

str_problem=""
str_problem=str_problem + "(DEFINE (PROBLEM P" + str( size ) + str( lettername ) + ")\n"
str_problem=str_problem + "  (:DOMAIN POINTERS )\n"
str_problem=str_problem + "  (:OBJECTS "
for idx in xrange( 0, size + 1 ):
   str_problem=str_problem + " V" + str( idx )
str_problem = str_problem + " - VALUE \n  )"

str_problem = str_problem + "\n  (:INIT"
for idx in xrange( 0, size ):
   str_problem = str_problem + "\n\t( NEXT V" + str( idx ) + " V" + str( idx + 1 ) + ")"

random.seed()
v = []
sol = 0
target = random.randint( 0, size - 1 )
for idx in xrange( 0, size ):
   v.append( random.randint( 0, size - 1 ) )
   str_problem = str_problem + "\n\t( VECTOR-ASSIGNMENT V" + str( idx ) + " V" + str( v[ idx ] ) + ")"
   if v[ idx ]  == target :
      sol = sol + 1



str_problem = str_problem + "\n\t( ASSIGNMENT A V0 )"
str_problem = str_problem + "\n\t( CONTENT A V" + str( v[ 0 ] ) + " )"
str_problem = str_problem + "\n\t( ASSIGNMENT C V0 )"
str_problem = str_problem + "\n\t( ASSIGNMENT TARGET V" + str( target ) + ")"
str_problem = str_problem + "\n\t( ASSIGNMENT TAIL V" + str( len( v ) - 1 ) + ")"
str_problem = str_problem + " )"

str_problem = str_problem + "\n  (:GOAL"
str_problem = str_problem + "\n\t( AND"
str_problem = str_problem + "\n\t( ASSIGNMENT A V" + str( len( v ) - 1 ) + " )"
str_problem = str_problem + "\n\t( ASSIGNMENT C V" + str( sol ) + " )"
str_problem = str_problem + "\n\t)\n  )\n)"

str_problem = str_problem.lower()

f_problem=open( "p" + str( size ) + str( lettername ) + ".pddl","w")
f_problem.write( str_problem )
f_problem.close()

sys.exit(0)
