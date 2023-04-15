      program test
         INTEGER M,N
         REAL A(10,10), B(10,10), C(10,10)
         WRITE(*,*) 'ENTER THE DIMENSION OF THE MATRIX=', M,N
         WRITE (*,*) 'M=',M,' N=',N
         READ (*,*) M,N
         
         DO I=1,M
            DO J=1,N
               READ(*,*) A(I,J)
            END DO
         END DO
         DO I=1,M
            DO J=1,N
               WRITE(*,*) 'THE GIVEN MATRIX IS ', A(I,J)
            END DO
         END DO
         
         STOP
      END
