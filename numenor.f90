      program numae
      parameter (n=10000)
      Implicit real*8(A-h, o-z)
      real*8 x(n), y(n), f(n), g(n), q(n)
      a=0.D0
      b=1.D0
      h=(b-a)/(n-1)
      do 1, j=1, n
      x(J)=a+(j-1)*h
1     continue

      do 3 k=1, n
      g(k)=-2.D0*dexp(-x(k))
      f(k)=1.D0
      q(k)=x(k)*dexp(-x(k))
3     continue

      y(1)=x(1)*dexp(-x(1))
      y(2)=(x(2))*dexp(-x(2))

      do 2 i=2, n-1
      dg=-2.D0*dexp(-x(i+1))-2.D0*(-2.D0*dexp(-x(i)))-2.D0*dexp(-x(i-1))
      y(i+1)=2.D0*y(i)-y(i-1)+(h*h)*( y(i)/(1.D0-(h*h)/12.D0) -2.D0*dexp(-x(i))  +dg/12.D0 )

2     continue
      do 4, ii=1, n
      if (mod(ii, n/10).eq.0) then
      print*, x(ii), abs((y(ii)-q(ii))/(q(ii)))
    endif
      4 continue

      end
