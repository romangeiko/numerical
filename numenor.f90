      program numae
      parameter (n=230)
      real x(n), y(n), f(n), g(n)
      open (10, file='numa.dat')
      a=0.
      b=10.
      h=(b-a)/(n-1)
      do 1, j=1, n
      x(J)=a+(j-1)*h
1     continue

      do 3 k=1, n
      g(k)=11*(x(k))**2
      f(k)=1./(x(k)**2)
3     continue

      y(1)=(x(1))**4
      y(2)=(x(2))**4

      do 2 i=2, n-1
      dg=g(i+1)-2*g(i)+g(i-1)
      y(i+1)=2*y(i)-y(i-1)+(h**2)*( f(i)*y(i)/(1.-(h**2)*f(i)/12.) +g(i)  +1./(12.*dg) )
      print *, i, x(i), y(i)
      write (10,*) x(i), y(i)
      write (10,*) x(i), abs(y(i)-(x(i))**4)

2     continue
      close(10)
      end
