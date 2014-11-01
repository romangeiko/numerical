      program kumsum
      pi=4*atan(1.)
      e=1.E-6
      x=((pi)**2)/6.-(((pi)**4)/90.)
      y=((pi)**2)/6.-(((pi)**4)/90.)+0.5
      k=1
      m=2
      do while ((1./((k**4)*(1+k**2)))/x > e)
      x=x+1./((k**4)*(1+k**2))
      y=y+1./((m**4)*(1+m**2))
      k=k+1
      m=m+1
      end do
      print *, k
      print *, y

     S1=0.
     c1=0.
     k=1
     bs=1
     do while (bs > e)
     y1 = 1./(k**2+1) - c1
     t1 = S1 + y1
     c1 = (t1 - S1) - y1
     S1 = t1
     k=k+1
     if (mod(k, 10000).eq.0.) then
     bs=S1-as
     as=S1
     endif
     end do
     print *, k
     print *,S1
     end
