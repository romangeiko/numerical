      program numae
      parameter (n=1000)
      Implicit real*8(A-h, o-z)
      real*8 x(n), y(n), f(n), g(n), q(n)
      open (10, file='numa.dat')
      a=0.
      b=2.
      h=(b-a)/(n-1)
      do 1, j=1, n
      x(J)=a+(j-1)*h
1     continue

      do 3 k=1, n
      g(k)=-2.*dexp(-x(k))
      f(k)=1.
      q(k)=x(k)*dexp(-x(k))
3     continue

      y(1)=x(1)*dexp(-x(1))
      y(2)=(x(2))*dexp(-x(2))

      do 2 i=2, n-1
      dg=g(i+1)-2.*g(i)+g(i-1)
      y(i+1)=2.*y(i)-y(i-1)+(h*h)*( y(i)/(1.-(h*h)/12.) +g(i)  +dg/12. )

      print *, x(i), y(i)-q(i)

2     continue
      close(10)
      end
