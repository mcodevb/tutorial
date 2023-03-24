c the following code computes the roots of ax + bx + c = 0
      program roots
         implicit none

c     Declare variables
         real a, b, c, x1 , x2 , disc, r1, c1

c     Inputs
         write (*,*) " Enter the coefficients a, b, and c:"
         read (*,*) a, b, c    ! read the coefficients
         write (*,*)  "The equation is: "           ! print the equation
         write (*,10)  a," x^2+",b," x+",c," = 0"   ! print the equation
   10    format(/,F5.2,A,F5.2,A,F5.2,A,/)
         disc = b **2 - 4 * a * c   ! Discriminant
         if ( disc < 0) then        !
            r1 = (-b)/ (2 * a)
            c1 = (sqrt ( -disc )) / (2 * a)
            write(*,'(A,A,/,F5.2,A,F5.2,A,F5.2,A,F5.2,A)') "The equation"
     +      ," has two complex conjugate roots :"
     +         , r1,"+",c1,"i and " ,  r1,"-",c1,"i"
         else if ( disc == 0) then
            x1 = -b / (2 * a)
            write(*,*) " The equation two equal real roots :", x1
         else
            x1 = (-b + sqrt ( disc )) / (2 * a)
            x2 = (-b - sqrt ( disc )) / (2 * a)
            write(*,*) "The equation has two distinct real roots :", x1
     +        , x2
         end if
         stop
      end
