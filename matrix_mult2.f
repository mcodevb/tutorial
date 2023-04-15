c     Matrix Addition and Substraction
      program matrix_add_sub
         implicit none
         integer m, n, p, i, j, k
         real a(10,10), b(10,10), c(10,10)
         ! open input file
         open(unit=1, file='matrix_mult_input.txt')
         open(unit=2, file='matrix_mult_output.txt')


         !write(*,*) "Enter the dimension of the matrix: "
         read(1,*) m, n, p
         write(2,10) "m = ",m, "n = ", n, " p = ", p
   10    format(A, I2, 3X, A, I2, A, I2)
         ! Read the matrix a
         ! write(*,*) "Enter the matrix a: "
         do i=1,m
            read(1,*) (a(i,j),j=1,n)
         end do
         write(2,*) "The matrix a is: "
         do i=1,m
            write(2,'(10f7.2)') (a(i,j),j=1,n)
         end do

         ! Read the matrix b
         ! write(*,*) "Enter the matrix b: "
         do i=1,n
            read(1,*) (b(i,j),j=1,p)
         end do
         write(2,*) "The matrix b is: "
         do i=1,n
            write(2,'(10f7.2)') (b(i,j),j=1,p)
         end do

         ! multiply the matrix a and b
         do i=1,m
            do j = 1,p
               c(i,j) = 0
               do k = 1,n
               c(i,j) = c(i,j) + a(i,k)*b(k,j)
               end do
            end do
         end do
         write(2,*) "The matrix c is: "
         do i=1,m
            write(2,'(10f7.2)') (c(i,j),j=1,p)
         end do

         stop
      end
