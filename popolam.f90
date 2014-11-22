      program dihotomia
      e=1.E-6
      er=1.E-2
      a=0.
      b=1.
      c=a
      d=b
      n=0
      do while ((d-c) > e)
      g=(c+d)/2
      if (y(g) > 0) then
      c=g
      else
      d=g
      endif
      n=n+1
      end do
      print *, n
      print *, d
      print *, cos(d)
      end

      function y(x)
      y=cos(x)-x
      end
