      program parabolic
      e=1.E-6
      er=1.E-2
      x1=0.
      x2=1.
      n=0
      do while (abs(x2-x1) > e)
      x0=(x1+x2)/2
      c=y(x0)
      b=(y(x2)-y(x1))/(x1-x2)
      a=(2*(y(x2)+y(x1))-4*c)/((x2-x1)**2)
      x=x0+(-b +sqrt(b**2-4*a*c))/(2*a)
      if ( y(x) < 0) then
      x2=x
      else
      x1=x
      endif
      n=n+1
      end do
      print *, n
      print *, x2
      end

      function y(f)
      y=cos(f)-f
      end
