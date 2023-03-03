C     program to print fibonacci sequence
      program fibonacci
      integer n,x1,x2,x3
      write(*,*) 'enter a positive integer'
      read(*,*) n
      x1=0
      x2=1
      write(*,*) x1
      write(*,*) x2
      do i=3,n
        x3=x2+x1
        write(*,*) x3
        x1=x2 
        x2=x3
      end do
      end program fibonacci