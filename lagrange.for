c     program newton_backward
      program input
      real x(10), y(10),xstar, ystar, term
      integer n,i,j
      open(unit=1, file='lagrange_input.txt')
      open(unit=2, file='lagrange_output.txt')
      read(1,*) n, xstar
      write(2,*) "n = ",n," xstar = ", xstar
      do i=1,n
           read(1,*) x(i),y(i)
      end do
      write(2,*) "The nodes  are: "
      do i=1,n
           write(2,*) x(i),y(i)
      end do  

      ystar = 0

      do i = 1, n
            term = 1
            do j = 1,n
             if(j.ne.i) then
               term = term*(xstar - x(j))/(x(i)-x(j))
             endif
            end do
            ystar = ystar + term*y(i)
      end do

      write(2,*) "The value of the function at x = ",xstar," is ",ystar
      stop
      end