c     program newton_backward
      program input
      real x(10), y(10), nabla(10,10) ,xstar, v, ystar,term
      integer n,i,j
      open(unit=1, file='inputx.txt')
      open(unit=2, file='output_back.txt')
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
           nabla(i,1)=y(i)
      end do
      do j=2,n  ! calculate the other columns
            do i=j,n
                  nabla(i,j)=nabla(i,j-1)-nabla(i-1,j-1)
            end do
      end do
c     peinting the difference table
      write(2,*) "The difference table is: "
      do i=1,n
            write(2,'(10(f7.4,2x))') (nabla(i,j), j=1,i)
      end do
c     calculation of u
      v=(xstar-x(n))/(x(2) - x(1))

c     calculation of polynomial function
      ystar=nabla(n,1) ! or  y(n)
      term = v
      do j=2,n 
            ystar = ystar + nabla(n,j)*term
            term = term*(v+j-1)/j
      end do

      write(2,*) "The value of the function at x = ",xstar," is ",ystar
      stop
      end