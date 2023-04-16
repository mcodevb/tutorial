c     program practics
      program input
      real x(10), y(10), diff(10,10) ,xstar, u, ystar,term
      integer n,i,j
      open(unit=1, file='inputx.txt')
      open(unit=2, file='outputx.txt')
      read(1,*) n, xstar
      write(2,*) "n = ",n," xstar = ", xstar
      do i=1,n
           read(1,*) x(i),y(i)
      end do
      write(2,*) "The nodes  are: "
      do i=1,n
           write(2,*) x(i),y(i)
      end do  
c     calculation of differentiable
      do i=1,n ! assign the first column
           diff(i,1)=y(i)
      end do
      do j=2,n  ! calculate the other columns
            do i=1,n-j+1
                  diff(i,j)=diff(i+1,j-1)-diff(i,j-1)
            end do
      end do
c     peinting the difference table
      write(2,*) "The difference table is: "
      do i=1,n
            write(2,'(10(f7.4,2x))') (diff(i,j), j=1,n-i+1)
      end do
c     calculation of u
      u=(xstar-x(1))/(x(2) - x(1))

c     calculation of polynomial function
      ystar=diff(1,1) ! or  y(1)
      term = u
      do j=2,n 
            ystar = ystar + diff(1,j)*term
            term = term*(u-j+1)/j
      end do

      write(2,*) "The value of the function at x = ",xstar," is ",ystar
      stop
      end