c     trace of a matrix
c     program trace_of_a_matrix
      implicit none
      real a(10,10) ,trace
      integer n,i,j
c     open input file
      open(unit=1, file='matrix1_input.txt')
      open(unit=2, file='matrix1_output.txt')

c     enter the dimension of the matrix
      read(1,*) n
      write(2,10) "n=",n
   10 format(A,I2,3X)
c     read the matrix a
      do i=1,n
         read(1,*) (a(i,j), j=1,n)
      end  do
c     calculation for trace
      trace=0
      do i=1,n
         trace=trace+a(i,i)
      end do
      write(2,*) "the trace of the matrix is",trace

      stop
      end
