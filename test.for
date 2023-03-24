c     Count the number of divisors
      program count_divisors
         integer n, count
         write(*,*) 'Enter a positive integer to find its number',
     +   ' of divisors'
         read(*,*) n
         count = 2
         do i=2, n/2
            if (mod(n,i)==0) then
               count = count+1;
            end if
         end do
         write(*,*) 'Total number of divisors of ',n,' is ', count
         if (count==2) then
            write(*,*) n,' is prime.'
         else
            write(*,*) n,' is not prime.'
         end if
      end program count_divisors
