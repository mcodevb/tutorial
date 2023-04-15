      program matrix_mult
      implicit none
      integer :: n, i, j, k
      real, dimension (:,:), allocatable ::  a, b, c


      ! open input file
      open(unit=1, file='matrix_input.txt')
      open(unit=2, file='matrix_output.txt')

      ! read matrix size
      read(1,*) n
      ! allocate memory      
      allocate ( a(n,n),b(n,n),c(n,n) )      
   


      ! read matrices a from file
      do i = 1, n
         read(1,*) (a(i,j), j=1,n)
      end do

      ! print martix a in the terminal
      write(2,*) "matrix a:"
      do i = 1, n
         write(2,'(9f10.4)') (a(i,j), j=1,n)
      end do

      ! read matrix b from file
      do i = 1, n
         read(1,*) (b(i,j), j=1,n)
      end do

      ! print martrix b in the terminal
      write(2,*) "matrix b:"
      do i = 1, n
         write(2,'(9f10.4)') (b(i,j), j=1,n)
      end do

      ! close input file
      close(1)

      ! compute matrix product c = a*b
      do i = 1, n
         do j = 1, n
            c(i,j) = 0.0
            do k = 1, n
               c(i,j) = c(i,j) + a(i,k)*b(k,j)
            end do
         end do
      end do

      ! print result
      write(2,*) "result matrix c:"
      do i = 1, n
         write(2,'(9f10.4)') (c(i,j), j=1,n)
      end do
      stop
      end 