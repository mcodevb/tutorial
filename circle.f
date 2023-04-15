      program circle
      real r, area, p

c This program reads a real number r and prints
c the area of a circle with radius r.

      write (*,*) 'Give radius r:'
      read  (*,2) r, p
 2    format(F6.2,1x,F6.2)
      write  (*,*) r, p
      area = 3.14159*r*r
      write (*,*) 'Area = ', area

      stop
      end
